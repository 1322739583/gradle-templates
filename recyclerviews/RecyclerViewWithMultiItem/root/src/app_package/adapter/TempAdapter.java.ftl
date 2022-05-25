package ${packageName}.${adapterPackage};

import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import ${packageName}.R;
import ${packageName}.model.${modelName};

import java.util.List;

public class ${adapterName} extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    public final int TYPE_ONE_IMAGE_ONE_TEXT=1;
    public final int TYPE_THREE_IMAGE_ONE_TEXT=2;


    private List<${modelName}> dataModels;
    private Context context;



    public ${adapterName}(Context context, List<${modelName}> dataModels) {
        this.dataModels = dataModels;
        this.context = context;
    }

    @NonNull
    @Override
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view=null;
        if (viewType==TYPE_ONE_IMAGE_ONE_TEXT){
            view = LayoutInflater.from(context).inflate(R.layout.activity_one_text_one_image_hor_item, parent, false);
            return new OneImageOneTextVH(view);
        }else if(viewType==TYPE_THREE_IMAGE_ONE_TEXT){
            view = LayoutInflater.from(context).inflate(R.layout.activity_one_text_three_image_item, parent, false);
            return new ThreeImageOneTextVH(view);
        }else {
            return null;
        }

    }

    @Override
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder holder, int position) {

        if (holder instanceof  OneImageOneTextVH){
            ((OneImageOneTextVH) holder).textView.setText(dataModels.get(position).getContent());
            //    Glide.with(context).load(dataModels.get(position).getImgUrl()).into(holder.imageView);

        }else if (holder instanceof  ThreeImageOneTextVH ){
            ((ThreeImageOneTextVH) holder).textView.setText(dataModels.get(position).getContent());
        }
    }

    @Override
    public int getItemCount() {
        return dataModels.size();
    }

    @Override
    public int getItemViewType(int position) {
       if (dataModels.get(position).getImgUrls().length>=3){
            return TYPE_THREE_IMAGE_ONE_TEXT;
        }else if (dataModels.get(position).getImgUrls().length==1){
            return TYPE_ONE_IMAGE_ONE_TEXT;
        }
        return super.getItemViewType(position);
    }


    class OneImageOneTextVH extends RecyclerView.ViewHolder{
        TextView textView;
        ImageView imageView;
        public OneImageOneTextVH(@NonNull View itemView) {
            super(itemView);
            textView = itemView.findViewById(R.id.textView);
            imageView = itemView.findViewById(R.id.imageView);
        }
    }

    class ThreeImageOneTextVH extends RecyclerView.ViewHolder{
        TextView textView;
        ImageView imageView1;
        ImageView imageView2;
        ImageView imageView3;
        public ThreeImageOneTextVH(@NonNull View itemView) {
            super(itemView);
            textView = itemView.findViewById(R.id.textView);
//            imageView1= itemView.findViewById(R.id.imageView);
//            imageView2= itemView.findViewById(R.id.imageView);
//            imageView3= itemView.findViewById(R.id.imageView);
        }
    }


}
