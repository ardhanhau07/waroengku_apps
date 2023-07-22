package review_controller

import (
	"encoding/json"
	"net/http"

	"github.com/Dizzy-nt/go-rest-api/initializers"
	"github.com/Dizzy-nt/go-rest-api/models"
	"github.com/gin-gonic/gin"
	"gorm.io/gorm"
)

func Index(c *gin.Context) {
	var review []models.Review
	initializers.Db.Find(&review)
	c.JSON(http.StatusOK, gin.H{"eeee": review})
}
func Show(c *gin.Context) {
	var review models.Review
	id := c.Param("id")
	if err := initializers.Db.First(&review, id).Error; err != nil {
		switch err {
		case gorm.ErrRecordNotFound:
			c.AbortWithStatusJSON(http.StatusNotFound, gin.H{"message": "Data-nya ga ketemu nih :("})
			return
		default:
			c.AbortWithStatusJSON(http.StatusInternalServerError, gin.H{"message": err.Error()})
			return
		}
	}
	c.JSON(http.StatusOK, gin.H{"message": review})
}

func Create(c *gin.Context) {
	var review models.Review
	if err := c.ShouldBindJSON(&review); err != nil {
		c.AbortWithStatusJSON(http.StatusBadRequest, gin.H{"message": err.Error()})
		return
	}
	initializers.Db.Create(&review)
	c.JSON(http.StatusOK, gin.H{"review": review})
}

func Update(c *gin.Context) {
	var review models.Review
	id := c.Param("id")

	if err := c.ShouldBindJSON(&review); err != nil {
		c.AbortWithStatusJSON(http.StatusBadRequest, gin.H{"message": err.Error()})
		return
	}
	if initializers.Db.Model(&review).Where("id=?", id).Updates(&review).RowsAffected == 0 {
		c.AbortWithStatusJSON(http.StatusNotFound, gin.H{"message": "Data-nya ga ketemu nih :("})
		return
	}
	c.JSON(http.StatusOK, gin.H{"message": "Data berhasil diperbarui :3"})
}

func Delete(c *gin.Context) {
	var review models.Review
	//input := map[string]string{"id":"0"}
	var input struct {
		Id json.Number
	}
	if err := c.ShouldBindJSON(&input); err != nil {
		c.AbortWithStatusJSON(http.StatusBadRequest, gin.H{"message": err.Error()})
		return
	}
	id, _ := input.Id.Int64()
	if initializers.Db.Delete(&review, id).RowsAffected == 0 {
		c.AbortWithStatusJSON(http.StatusBadRequest, gin.H{"message": "Gagal menghapus data :("})
		return
	}
	c.JSON(http.StatusOK, gin.H{"message": "Data berhasil dihapus"})
}

func UserDeleteReview(c *gin.Context) {
	var review models.Review
	var input struct {
		Id json.Number
	}
	if err := c.ShouldBindJSON(&input); err != nil {
		c.AbortWithStatusJSON(http.StatusBadRequest, gin.H{"message": err.Error()})
		return
	}
	id, _ := input.Id.Int64()
	if initializers.Db.Delete(&review, id).RowsAffected == 0 {
		c.AbortWithStatusJSON(http.StatusBadRequest, gin.H{"message": "Gagal menghapus data :("})
		return
	}
	c.JSON(http.StatusOK, gin.H{"message": "Data berhasil dihapus"})
}
