.class public Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$NetworkInfo;
.super Ljava/lang/Object;
.source "MTAdUnionDebugFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkInfo"
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field final synthetic this$0:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;


# direct methods
.method public constructor <init>(Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "state"    # Ljava/lang/String;
    .param p5, "msg"    # Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$NetworkInfo;->this$0:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p3, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$NetworkInfo;->name:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$NetworkInfo;->state:Ljava/lang/String;

    .line 73
    iput-object p5, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$NetworkInfo;->msg:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$NetworkInfo;->id:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$NetworkInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method getMsg()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$NetworkInfo;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$NetworkInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method getState()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$NetworkInfo;->state:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$NetworkInfo;->id:Ljava/lang/String;

    .line 83
    return-void
.end method

.method setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 102
    iput-object p1, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$NetworkInfo;->msg:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 90
    iput-object p1, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$NetworkInfo;->name:Ljava/lang/String;

    .line 91
    return-void
.end method

.method setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .line 106
    iput-object p1, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$NetworkInfo;->state:Ljava/lang/String;

    .line 107
    return-void
.end method
