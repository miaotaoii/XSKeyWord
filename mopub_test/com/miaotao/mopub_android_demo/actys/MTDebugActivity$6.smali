.class Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$6;
.super Ljava/lang/Object;
.source "MTDebugActivity.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;
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

    .line 392
    iput-object p1, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$6;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3
    .param p1, "task"    # Lcom/google/android/gms/tasks/Task;

    .line 395
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const-string v1, "fcm_token:"

    if-nez v0, :cond_0

    .line 396
    const-string v0, "\u83b7\u53d6\u5931\u8d25\uff0c\u91cd\u65b0\u83b7\u53d6..."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$6;->this$0:Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;

    iget-object v1, v1, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->completeListener:Lcom/google/android/gms/tasks/OnCompleteListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 399
    return-void

    .line 401
    :cond_0
    const-string v0, "\u83b7\u53d6\u6210\u529f"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 404
    .local v0, "token":Ljava/lang/String;
    if-nez v0, :cond_1

    const-string v2, "null"

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    return-void
.end method
