.class Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity$1;
.super Ljava/lang/Object;
.source "MTAdUnionActivity.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubRewardedAdListener;


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

    .line 264
    iput-object p1, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity$1;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRewardedAdClicked(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 304
    return-void
.end method

.method public onRewardedAdClosed(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 297
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity$1;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;

    invoke-static {v0}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->access$000(Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;)Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    move-result-object v0

    const-string v1, "load"

    const-string v2, ""

    invoke-virtual {v0, p1, v1, v2}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->refreshState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity$1;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;

    invoke-static {v0, p1}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->access$100(Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public onRewardedAdCompleted(Ljava/util/Set;Lcom/mopub/common/MoPubReward;)V
    .locals 0
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "moPubReward"    # Lcom/mopub/common/MoPubReward;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .line 293
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    return-void
.end method

.method public onRewardedAdLoadFailure(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "moPubErrorCode"    # Lcom/mopub/mobileads/MoPubErrorCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRewardedVideoLoadFailure id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DePub"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity$1;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;

    invoke-static {v0}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->access$000(Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;)Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "load fail"

    invoke-virtual {v0, p1, v2, v1}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->refreshState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public onRewardedAdLoadSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 277
    invoke-static {p1}, Lcom/mopub/mobileads/MoPubRewardedAds;->hasRewardedAd(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 278
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

    .line 279
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity$1;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;

    invoke-static {v0}, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;->access$000(Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;)Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    move-result-object v0

    const-string v1, "loaded"

    const-string v2, ""

    invoke-virtual {v0, p1, v1, v2}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->refreshState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public onRewardedAdShowError(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "moPubErrorCode"    # Lcom/mopub/mobileads/MoPubErrorCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 273
    return-void
.end method

.method public onRewardedAdStarted(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 268
    return-void
.end method
