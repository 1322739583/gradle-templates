package ${packageName}.${modelPackage};

public class ${modelName} {
    private String content;
    private String imgUrl;

    public ${modelName} ( String imgUrl,String content) {
        this.content = content;
        this.imgUrl = imgUrl;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }
}
