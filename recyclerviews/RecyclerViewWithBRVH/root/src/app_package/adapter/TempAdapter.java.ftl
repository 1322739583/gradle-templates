package ${packageName}.${adapterPackage};

import android.view.View;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;


import java.util.List;

public class ${adapterName} extends BaseQuickAdapter<${modelName}, BaseViewHolder> {

    public ${adapterName}(int layoutResId, @Nullable List<${modelName}> data) {
        super(layoutResId, data);
    }

    @Override
    protected void convert(@NonNull BaseViewHolder helper, ${modelName} item) {
        TextView  textView = helper.itemView.findViewById(R.id.text);
    }
}
