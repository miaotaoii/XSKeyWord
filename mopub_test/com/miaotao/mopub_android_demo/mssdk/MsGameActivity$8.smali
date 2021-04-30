.class Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity$8;
.super Ljava/lang/Object;
.source "MsGameActivity.java"

# interfaces
.implements Lcom/ms/sdk/wrapper/video/MsRewardVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->setVideoAdListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;


# direct methods
.method constructor <init>(Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;

    .line 170
    iput-object p1, p0, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity$8;->this$0:Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoAdClicked()V
    .locals 2

    .line 173
    const-string v0, "DePub"

    const-string v1, "onVideoAdClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method

.method public onVideoAdClosed()V
    .locals 2

    .line 179
    const-string v0, "DePub"

    const-string v1, "onVideoAdClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity$8;->this$0:Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;

    invoke-static {v0}, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->access$300(Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;)V

    .line 181
    return-void
.end method

.method public onVideoAdDisplayed()V
    .locals 2

    .line 185
    const-string v0, "DePub"

    const-string v1, "onVideoAdDisplayed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void
.end method

.method public onVideoAdDontReward(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 197
    const-string v0, "DePub"

    const-string v1, "onVideoAdDontReward"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method

.method public onVideoAdReward()V
    .locals 2

    .line 191
    const-string v0, "DePub"

    const-string v1, "onVideoAdReward"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void
.end method
