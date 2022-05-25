package ${packageName};

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.DividerItemDecoration;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.os.Bundle;

import java.util.ArrayList;
import java.util.List;

public class ${activityName} extends AppCompatActivity {


    RecyclerView recyclerView;

 

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});



        List<${modelName}> dataModels=new ArrayList<>();
        for (int i = 0; i <10 ; i++) {
            ${modelName} dataModel=new ${modelName}(null,"item"+i);
            dataModels.add(dataModel);
        }

        recyclerView=findViewById(R.id.recycler);
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        recyclerView.addItemDecoration(new DividerItemDecoration(this,DividerItemDecoration.VERTICAL));
        recyclerView.setAdapter(new ${adapterName}(this,dataModels));

    }
}
