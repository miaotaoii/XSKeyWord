.class Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$5;
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

    .line 176
    iput-object p1, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$5;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 179
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$5;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;

    const-string v1, "mopub_debug_orign_launcher"

    invoke-static {v1, v0}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->readManifest(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "originLauncherName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 182
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

    .line 183
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 187
    goto :goto_0

    .line 184
    :catch_0
    move-exception v2

    .line 186
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 188
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    if-nez v1, :cond_0

    .line 189
    iget-object v2, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$5;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;

    const/4 v3, 0x0

    const-string v4, "\u6ca1\u6709\u627e\u5230\u6e38\u620f\u5165\u53e3"

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 190
    return-void

    .line 192
    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/ironsource/mediationsdk/IronSource;->setAdaptersDebug(Z)V

    .line 193
    iget-object v2, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$5;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validateIntegration(Landroid/app/Activity;)V

    .line 195
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$5;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$5;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;

    invoke-virtual {v3, v2}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->startActivity(Landroid/content/Intent;)V

    .line 197
    iget-object v3, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$5;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;

    invoke-virtual {v3}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->finish()V

    .line 198
    return-void
.end method
