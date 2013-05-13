.class Lcom/android/camera/VideoCamera$FlashLightAdapter;
.super Landroid/widget/BaseAdapter;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlashLightAdapter"
.end annotation


# instance fields
.field private mCurSel:I

.field private mIconId:[I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemData:[Ljava/lang/String;

.field private mUnSelIconId:[I

.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method public constructor <init>(Lcom/android/camera/VideoCamera;Landroid/content/Context;I[I[I)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "itemDataId"
    .parameter "iconId"
    .parameter "unSelIconId"

    .prologue
    .line 3638
    iput-object p1, p0, Lcom/android/camera/VideoCamera$FlashLightAdapter;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 3633
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/VideoCamera$FlashLightAdapter;->mCurSel:I

    .line 3639
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera$FlashLightAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 3640
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera$FlashLightAdapter;->mItemData:[Ljava/lang/String;

    .line 3641
    iput-object p4, p0, Lcom/android/camera/VideoCamera$FlashLightAdapter;->mIconId:[I

    .line 3642
    iput-object p5, p0, Lcom/android/camera/VideoCamera$FlashLightAdapter;->mUnSelIconId:[I

    .line 3643
    return-void
.end method

.method private getItemBg(I)I
    .locals 2
    .parameter "position"

    .prologue
    const v0, 0x7f02011b

    .line 3650
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera$FlashLightAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v1, p1, :cond_1

    if-nez p1, :cond_1

    .line 3657
    :cond_0
    :goto_0
    return v0

    .line 3652
    :cond_1
    if-nez p1, :cond_2

    .line 3653
    const v0, 0x7f020190

    goto :goto_0

    .line 3654
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera$FlashLightAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v1, p1, :cond_0

    .line 3655
    const v0, 0x7f020014

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 3662
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 3667
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 3672
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 3677
    if-nez p2, :cond_0

    .line 3678
    iget-object v2, p0, Lcom/android/camera/VideoCamera$FlashLightAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04002c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3679
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera$FlashLightAdapter;->getItemBg(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3681
    :cond_0
    const v2, 0x7f0d008d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3682
    .local v0, icon:Landroid/widget/ImageView;
    const v2, 0x7f0d008e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3683
    .local v1, text:Landroid/widget/TextView;
    iget v2, p0, Lcom/android/camera/VideoCamera$FlashLightAdapter;->mCurSel:I

    if-ne p1, v2, :cond_1

    .line 3684
    iget-object v2, p0, Lcom/android/camera/VideoCamera$FlashLightAdapter;->mIconId:[I

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3688
    :goto_0
    iget-object v2, p0, Lcom/android/camera/VideoCamera$FlashLightAdapter;->mItemData:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3689
    return-object p2

    .line 3686
    :cond_1
    iget-object v2, p0, Lcom/android/camera/VideoCamera$FlashLightAdapter;->mUnSelIconId:[I

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setCurSel(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 3646
    iput p1, p0, Lcom/android/camera/VideoCamera$FlashLightAdapter;->mCurSel:I

    .line 3647
    return-void
.end method
