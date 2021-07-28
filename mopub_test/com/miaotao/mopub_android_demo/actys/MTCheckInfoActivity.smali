.class public Lcom/miaotao/mopub_android_demo/actys/MTCheckInfoActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MTCheckInfoActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DePub"


# instance fields
.field private actionBar:Landroidx/appcompat/app/ActionBar;

.field private tv_error:Landroid/widget/TextView;

.field private tv_info:Landroid/widget/TextView;

.field private viewModel:Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private initLayout()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .line 71
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 72
    .local v0, "myLayout":Landroid/widget/RelativeLayout;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 74
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miaotao/mopub_android_demo/actys/MTCheckInfoActivity;->tv_info:Landroid/widget/TextView;

    .line 75
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 77
    .local v1, "tvMopubPara":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0x3c

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 78
    iget-object v3, p0, Lcom/miaotao/mopub_android_demo/actys/MTCheckInfoActivity;->tv_info:Landroid/widget/TextView;

    const/16 v4, 0x321

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setId(I)V

    .line 79
    iget-object v3, p0, Lcom/miaotao/mopub_android_demo/actys/MTCheckInfoActivity;->tv_info:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 81
    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 82
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 83
    iget-object v5, p0, Lcom/miaotao/mopub_android_demo/actys/MTCheckInfoActivity;->tv_info:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/miaotao/mopub_android_demo/actys/MTCheckInfoActivity;->tv_error:Landroid/widget/TextView;

    .line 86
    iget-object v5, p0, Lcom/miaotao/mopub_android_demo/actys/MTCheckInfoActivity;->tv_error:Landroid/widget/TextView;

    const/high16 v6, -0x10000

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v2, v5

    .line 89
    .local v2, "tvErrorPara":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/miaotao/mopub_android_demo/actys/MTCheckInfoActivity;->tv_info:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getId()I

    move-result v5

    const/4 v6, 0x3

    invoke-virtual {v2, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 90
    const/16 v5, 0x1e

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 91
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 92
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 93
    iget-object v3, p0, Lcom/miaotao/mopub_android_demo/actys/MTCheckInfoActivity;->tv_error:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    invoke-virtual {p0, v0}, Lcom/miaotao/mopub_android_demo/actys/MTCheckInfoActivity;->setContentView(Landroid/view/View;)V

    .line 96
    return-void
.end method

.method private onGetFinish()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTCheckInfoActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    const-string v1, "\u53c2\u6570\u914d\u7f6e"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method

.method private onGetStart()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTCheckInfoActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    const-string v1, "\u6b63\u5728\u8bfb\u53d6\u670d\u52a1\u5668\u914d\u7f6e..."

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method private onNetWork(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "b"    # Ljava/lang/Boolean;

    .line 47
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTCheckInfoActivity;->onGetStart()V

    goto :goto_0

    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTCheckInfoActivity;->onGetFinish()V

    .line 51
    :goto_0
    return-void
.end method

.method private showDialog(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 55
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, "builder":Landroidx/appcompat/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 57
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 58
    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$MTCheckInfoActivity(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTCheckInfoActivity;->tv_info:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$onCreate$1$MTCheckInfoActivity(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0, p1}, Lcom/miaotao/mopub_android_demo/actys/MTCheckInfoActivity;->showDialog(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onCreate$2$MTCheckInfoActivity(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "b"    # Ljava/lang/Boolean;

    .line 41
    invoke-direct {p0, p1}, Lcom/miaotao/mopub_android_demo/actys/MTCheckInfoActivity;->onNetWork(Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic lambda$onCreate$3$MTCheckInfoActivity(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTCheckInfoActivity;->tv_error:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 29
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/actys/MTCheckInfoActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTCheckInfoActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    .line 31
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTCheckInfoActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    const-string v1, "\u53c2\u6570\u914d\u7f6e"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 33
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTCheckInfoActivity;->initLayout()V

    .line 35
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 36
    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/actys/MTCheckInfoActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->getInstance(Landroid/app/Application;)Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;

    .line 37
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTCheckInfoActivity;->viewModel:Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;

    .line 39
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTCheckInfoActivity;->viewModel:Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->getTvInfoLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTCheckInfoActivity$g5cKLz3R2PsVl6cMtlTv2dG8sWs;

    invoke-direct {v1, p0}, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTCheckInfoActivity$g5cKLz3R2PsVl6cMtlTv2dG8sWs;-><init>(Lcom/miaotao/mopub_android_demo/actys/MTCheckInfoActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 40
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTCheckInfoActivity;->viewModel:Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->getIsAdmobIdCorrect()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTCheckInfoActivity$gbEjfsEgh8GAPn-cc_A0jliioLo;

    invoke-direct {v1, p0}, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTCheckInfoActivity$gbEjfsEgh8GAPn-cc_A0jliioLo;-><init>(Lcom/miaotao/mopub_android_demo/actys/MTCheckInfoActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 41
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTCheckInfoActivity;->viewModel:Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->getIsRequesting()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTCheckInfoActivity$QPM7pkqc7jfT3x3HsPzzs54Wdas;

    invoke-direct {v1, p0}, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTCheckInfoActivity$QPM7pkqc7jfT3x3HsPzzs54Wdas;-><init>(Lcom/miaotao/mopub_android_demo/actys/MTCheckInfoActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 42
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTCheckInfoActivity;->viewModel:Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/actys/view_models/MTCheckInfoActyViewModel;->getTvErrorLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTCheckInfoActivity$0-Zno2L7swP2MtQHeOhyAG7s9wc;

    invoke-direct {v1, p0}, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTCheckInfoActivity$0-Zno2L7swP2MtQHeOhyAG7s9wc;-><init>(Lcom/miaotao/mopub_android_demo/actys/MTCheckInfoActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 44
    return-void
.end method
