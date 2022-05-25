package ${packageName}.data;

import ${packageName}.${modelPackage}.${modelName};

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class DataSource {


    public static List<${modelName}> getMultiData(){
        List<${modelName}> dataModels=new ArrayList<>();
        ${modelName} dataModel=new ${modelName}();S
        dataModel.setAuthor("tom");
        dataModel.setCommentCount(2000);
        dataModel.setContent("content1");
        dataModel.setImgUrls(new String[]{"url1","url2","url3"});
        dataModel.setTag("tag1");
        dataModel.setTime(new Date().getTime());

        ${modelName} dataModel2=new ${modelName}();
        dataModel2.setAuthor("jack");
        dataModel2.setCommentCount(2000);
        dataModel2.setContent("content2");
        dataModel2.setImgUrls(new String[]{"url4"});
        dataModel2.setTag("tag2");
        dataModel2.setTime(new Date().getTime());

        dataModels.add(dataModel);
        dataModels.add(dataModel2);

        return dataModels;
    }
}
