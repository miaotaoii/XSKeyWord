.class Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$3;
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

    .line 154
    iput-object p1, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$3;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 157
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$3;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;

    const-class v2, Lcom/miaotao/mopub_android_demo/actys/MTCheckInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$3;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;

    invoke-virtual {v1, v0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->startActivity(Landroid/content/Intent;)V

    .line 160
    return-void
.end method
