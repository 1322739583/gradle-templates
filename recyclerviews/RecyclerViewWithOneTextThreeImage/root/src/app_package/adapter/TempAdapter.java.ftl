package ${packageName}.${adapterPackage};

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import java.util.List;

public class ${adapterName} extends RecyclerView.Adapter<${adapterName}.VH> {

    private List<${modelName}> dataModels;
    private Context context;


    public ${adapterName}(Context context,List<${modelName}> dataModels) {
        this.dataModels = dataModels;
        this.context = context;
    }

    @NonNull
    @Override
    public VH onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(context).inflate(R.layout.${itemXmlName}, parent, false);
        return new VH(view);
    }

    @Override
    public void onBindViewHolder(@NonNull VH holder, int position) {
       holder.textView.setText(dataModels.get(position).getContent());
       //Glide.with(context).load(dataModels.get(position).getImgUrl()).into(holder.imageView);
    }

    @Override
    public int getItemCount() {
        return dataModels.size();
    }

    class VH extends RecyclerView.ViewHolder {
        TextView textView;
        ImageView imageView;
        ImageView imageView2;
        ImageView imageView3;
        public VH(@NonNull View itemView) {
            super(itemView);
            textView=itemView.findViewById(R.id.textView);
            imageView=itemView.findViewById(R.id.imageView1);
            imageView2=itemView.findViewById(R.id.imageView2);
            imageView3=itemView.findViewById(R.id.imageView3);
        }
    }
}
