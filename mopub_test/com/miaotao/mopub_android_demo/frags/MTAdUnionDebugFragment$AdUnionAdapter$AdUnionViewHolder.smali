.class Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MTAdUnionDebugFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdUnionViewHolder"
.end annotation


# instance fields
.field mAdName:Landroid/widget/TextView;

.field mAdVersion:Landroid/widget/TextView;

.field mBanner:Lcom/mopub/mobileads/MoPubView;

.field mHas:Landroid/widget/TextView;

.field mShow:Landroid/widget/Button;

.field final synthetic this$1:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter;


# direct methods
.method constructor <init>(Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$1"    # Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter;
    .param p2, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .line 338
    iput-object p1, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;->this$1:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter;

    .line 339
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 340
    const/16 v0, 0x13

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;->mAdName:Landroid/widget/TextView;

    .line 341
    const/16 v0, 0x15

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;->mAdVersion:Landroid/widget/TextView;

    .line 342
    const/16 v0, 0x11

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;->mHas:Landroid/widget/TextView;

    .line 343
    const/16 v0, 0xf

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;->mShow:Landroid/widget/Button;

    .line 344
    const/16 v0, 0x17

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/MoPubView;

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;->mBanner:Lcom/mopub/mobileads/MoPubView;

    .line 346
    return-void
.end method
