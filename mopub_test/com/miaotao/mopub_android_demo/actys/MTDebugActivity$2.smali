.class Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$2;
.super Ljava/lang/Object;
.source "MTDebugActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->setButtonClieckEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;


# direct methods
.method constructor <init>(Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;

    .line 115
    iput-object p1, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$2;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 118
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->MOPUB_BuildConfig_CLASS_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->MOPUB_CLASS_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-static {}, Lcom/mopub/common/MoPub;->isSdkInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$2;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;

    const/4 v1, 0x1

    const-string v2, "MoPub\u5df2\u7ecf\u521d\u59cb\u5316\uff01\u8bf7\u9000\u51fa\u91cd\u65b0\u8fdb\u5165"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 121
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$2;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;

    const-string v1, "mopub_debug_orign_launcher"

    invoke-static {v1, v0}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->readManifest(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "originLauncherName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 129
    .local v1, "cls":Ljava/lang/Class;
    :try_start_0
    const-string v2, "DePub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cls name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 134
    goto :goto_0

    .line 131
    :catch_0
    move-exception v2

    .line 133
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 135
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    if-nez v1, :cond_1

    .line 136
    iget-object v2, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$2;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;

    const/4 v3, 0x0

    const-string v4, "\u6ca1\u6709\u627e\u5230\u6e38\u620f\u5165\u53e3"

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 137
    return-void

    .line 139
    :cond_1
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$2;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$2;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;

    invoke-virtual {v3, v2}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->startActivity(Landroid/content/Intent;)V

    .line 141
    iget-object v3, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$2;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;

    invoke-static {v3}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->access$100(Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;)V

    .line 142
    iget-object v3, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$2;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;

    invoke-virtual {v3}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->finish()V

    .line 144
    return-void
.end method
