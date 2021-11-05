.class Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity$1;
.super Ljava/lang/Object;
.source "MTTestGameUnitActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;


# direct methods
.method constructor <init>(Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;

    .line 121
    iput-object p1, p0, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity$1;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 124
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity$1;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;

    invoke-static {v0}, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->access$000(Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;)Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity$1;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;

    invoke-static {v0}, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->access$000(Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;)Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;->getVideos()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 125
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity$1;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;

    const-class v2, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity$1;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;

    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->access$000(Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;)Lcom/miaotao/mopub_android_demo/beans/GameAdUnits;

    move-result-object v1

    const-string v2, "unitData"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 127
    const-string v1, "type"

    const-string v2, "video"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    iget-object v1, p0, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity$1;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;

    invoke-virtual {v1, v0}, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->startActivity(Landroid/content/Intent;)V

    .line 129
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity$1;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;

    const-string v1, "\u6ca1\u6709video \u5e7f\u544a\u4f4d"

    invoke-static {v0, v1}, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;->access$100(Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;Ljava/lang/String;)V

    .line 133
    :goto_0
    return-void
.end method
