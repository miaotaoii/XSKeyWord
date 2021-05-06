.class Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity$1;
.super Ljava/lang/Object;
.source "MTAdUnionActivity.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubRewardedVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->setRewardListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;


# direct methods
.method constructor <init>(Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;

    .line 257
    iput-object p1, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity$1;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRewardedVideoClicked(Ljava/lang/String;)V
    .locals 0
    .param p1, "adUnitId"    # Ljava/lang/String;

    .line 287
    return-void
.end method

.method public onRewardedVideoClosed(Ljava/lang/String;)V
    .locals 3
    .param p1, "adUnitId"    # Ljava/lang/String;

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRewardedVideoClosed id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DePub"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity$1;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;

    invoke-static {v0}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->access$000(Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;)Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    move-result-object v0

    const-string v1, "load"

    const-string v2, ""

    invoke-virtual {v0, p1, v1, v2}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->refreshState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity$1;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;

    invoke-static {v0, p1}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->access$100(Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public onRewardedVideoCompleted(Ljava/util/Set;Lcom/mopub/common/MoPubReward;)V
    .locals 0
    .param p2, "reward"    # Lcom/mopub/common/MoPubReward;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mopub/common/MoPubReward;",
            ")V"
        }
    .end annotation

    .line 300
    .local p1, "adUnitIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    return-void
.end method

.method public onRewardedVideoLoadFailure(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 3
    .param p1, "adUnitId"    # Ljava/lang/String;
    .param p2, "errorCode"    # Lcom/mopub/mobileads/MoPubErrorCode;

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRewardedVideoLoadFailure id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DePub"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity$1;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;

    invoke-static {v0}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->access$000(Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;)Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "load fail"

    invoke-virtual {v0, p1, v2, v1}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->refreshState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public onRewardedVideoLoadSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "adUnitId"    # Ljava/lang/String;

    .line 260
    invoke-static {p1}, Lcom/mopub/mobileads/MoPubRewardedVideos;->hasRewardedVideo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 261
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRewardedVideoLoadSuccess "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DePub"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity$1;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;

    invoke-static {v0}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->access$000(Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;)Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    move-result-object v0

    const-string v1, "loaded"

    const-string v2, ""

    invoke-virtual {v0, p1, v1, v2}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->refreshState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public onRewardedVideoPlaybackError(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0
    .param p1, "adUnitId"    # Ljava/lang/String;
    .param p2, "errorCode"    # Lcom/mopub/mobileads/MoPubErrorCode;

    .line 282
    return-void
.end method

.method public onRewardedVideoStarted(Ljava/lang/String;)V
    .locals 0
    .param p1, "adUnitId"    # Ljava/lang/String;

    .line 277
    return-void
.end method
