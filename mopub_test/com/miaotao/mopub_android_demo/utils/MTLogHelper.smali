.class public Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;
.super Ljava/lang/Object;
.source "MTLogHelper.java"


# static fields
.field public static TAG:Ljava/lang/String;

.field public static sDebuggable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    const-string v0, "AdsSdk_Base_1211"

    sput-object v0, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->TAG:Ljava/lang/String;

    .line 6
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->sDebuggable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method public static cpLogE(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 26
    if-eqz p0, :cond_0

    .line 27
    sget-object v0, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cplog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    :cond_0
    return-void
.end method

.method public static cpLogI(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 14
    if-eqz p0, :cond_0

    .line 15
    sget-object v0, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cplog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    :cond_0
    return-void
.end method

.method public static cpLogW(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 20
    if-eqz p0, :cond_0

    .line 21
    sget-object v0, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cplog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 39
    sget-boolean v0, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->sDebuggable:Z

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {p0, v0}, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 76
    sget-boolean v0, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->sDebuggable:Z

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 72
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 46
    sget-boolean v0, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->sDebuggable:Z

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 32
    sget-boolean v0, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->sDebuggable:Z

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {p0, v0}, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 61
    sget-boolean v0, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->sDebuggable:Z

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 57
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/miaotao/mopub_android_demo/utils/MTLogHelper;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    return-void
.end method
