.class public Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;
.super Landroidx/fragment/app/Fragment;
.source "MTAdUnionDebugFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter;,
        Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$NetworkInfo;,
        Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DePub"


# instance fields
.field private banners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/MoPubView;",
            ">;"
        }
    .end annotation
.end field

.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$NetworkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isBanner:Z

.field private mAdUnionAdapter:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter;

.field private mAdUnionClickListener:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionClickListener;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->data:Ljava/util/ArrayList;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->type:I

    .line 43
    iput-boolean v0, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->isBanner:Z

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->banners:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    .line 36
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    .line 36
    iget v0, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->type:I

    return v0
.end method

.method static synthetic access$200(Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    .line 36
    iget-boolean v0, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->isBanner:Z

    return v0
.end method

.method static synthetic access$300(Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;)Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    .line 36
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->mAdUnionClickListener:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionClickListener;

    return-object v0
.end method

.method public static newInstance(I)Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;
    .locals 1
    .param p0, "adType"    # I

    .line 130
    new-instance v0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    invoke-direct {v0}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;-><init>()V

    .line 131
    .local v0, "fragment":Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;
    return-object v0
.end method


# virtual methods
.method public initData(Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47
    .local p1, "mAdConfigMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 50
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 51
    .local v1, "id":Ljava/lang/String;
    iget-object v8, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->data:Ljava/util/ArrayList;

    new-instance v9, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$NetworkInfo;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    const-string v6, "load"

    const-string v7, ""

    move-object v2, v9

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$NetworkInfo;-><init>(Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .end local v1    # "id":Ljava/lang/String;
    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 137
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 138
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 144
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 145
    .local v0, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 146
    .local v1, "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 147
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 151
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 152
    new-instance v2, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter;

    invoke-direct {v2, p0}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter;-><init>(Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;)V

    iput-object v2, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->mAdUnionAdapter:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter;

    .line 153
    iget-object v2, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->mAdUnionAdapter:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 154
    return-object v0
.end method

.method public refreshState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$NetworkInfo;

    .line 116
    .local v1, "networkinfo":Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$NetworkInfo;
    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$NetworkInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    invoke-virtual {v1, p3}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$NetworkInfo;->setMsg(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1, p2}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$NetworkInfo;->setState(Ljava/lang/String;)V

    .line 119
    goto :goto_1

    .line 121
    .end local v1    # "networkinfo":Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$NetworkInfo;
    :cond_0
    goto :goto_0

    .line 122
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->mAdUnionAdapter:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter;

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter;->notifyDataSetChanged()V

    .line 123
    return-void
.end method

.method public setAdUnionClickListener(Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionClickListener;)V
    .locals 0
    .param p1, "adUnionClickListener"    # Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionClickListener;

    .line 111
    iput-object p1, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->mAdUnionClickListener:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionClickListener;

    .line 112
    return-void
.end method

.method public setBanner(Z)V
    .locals 0
    .param p1, "banner"    # Z

    .line 126
    iput-boolean p1, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->isBanner:Z

    .line 127
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 56
    iput p1, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->type:I

    .line 57
    return-void
.end method
