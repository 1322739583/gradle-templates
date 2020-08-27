package ${packageName};

import android.os.Bundle;
import android.util.Log;
import android.widget.Button;

import androidx.appcompat.app.AppCompatActivity;



import java.util.List;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.schedulers.Schedulers;

public class ${activityName} extends AppCompatActivity {


    @BindView(R.id.recycler)
    RecyclerView recycler;
    
    List<${modelName}> data;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});
        ButterKnife.bind(this);

        recycler.setLayoutManager(new LinearLayoutManager(this));
        recycler.setAdapter(new ${adapterName}(R.layout.${itemXmlName},data));

 
    }




  
}
