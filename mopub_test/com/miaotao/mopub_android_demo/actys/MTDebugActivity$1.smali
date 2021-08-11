.class Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$1;
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

    .line 99
    iput-object p1, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$1;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 103
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$1;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;

    invoke-static {v0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->access$000(Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$1;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;

    const-class v2, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "type"

    const-string v2, "inner"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    iget-object v1, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$1;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;

    invoke-virtual {v1, v0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->startActivity(Landroid/content/Intent;)V

    .line 108
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$1;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;

    const/4 v1, 0x0

    const-string v2, "MoPub\u5df2\u7ecf\u4f7f\u7528\u6e38\u620f\u5e7f\u544a\u4f4d\u521d\u59cb\u5316\uff01\n\u8bf7\u9000\u51fa\u91cd\u65b0\u8fdb\u5165"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 112
    :goto_0
    return-void
.end method
