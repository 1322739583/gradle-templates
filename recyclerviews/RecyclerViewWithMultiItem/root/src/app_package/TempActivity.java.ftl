package ${packageName};

import android.os.Bundle;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.DividerItemDecoration;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import ${packageName}.${adapterPackage}.${adapterName};
import ${packageName}.data.DataSource;
import ${packageName}.${modelPackage}.${modelName};
import java.util.List;

public class ${activityName} extends AppCompatActivity {


    RecyclerView recyclerView;

    private List<String> contentList;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_muilt);

        List<${modelName}> multiDataModels= DataSource.getMultiData();


        recyclerView = findViewById(R.id.recycler);
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        recyclerView.addItemDecoration(new DividerItemDecoration(this, DividerItemDecoration.VERTICAL));
        recyclerView.setAdapter(new ${adapterName}(this, multiDataModels));

    }


}