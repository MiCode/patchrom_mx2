.class Lcom/android/camera/Camera$FlashLightAdapter;
.super Landroid/widget/BaseAdapter;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
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

.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;Landroid/content/Context;I[I[I)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "itemDataId"
    .parameter "iconId"
    .parameter "unselIconId"

    .prologue
    .line 5759
    iput-object p1, p0, Lcom/android/camera/Camera$FlashLightAdapter;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 5754
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/Camera$FlashLightAdapter;->mCurSel:I

    .line 5760
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera$FlashLightAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 5761
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera$FlashLightAdapter;->mItemData:[Ljava/lang/String;

    .line 5762
    iput-object p4, p0, Lcom/android/camera/Camera$FlashLightAdapter;->mIconId:[I

    .line 5763
    iput-object p5, p0, Lcom/android/camera/Camera$FlashLightAdapter;->mUnSelIconId:[I

    .line 5764
    return-void
.end method

.method private getItemBg(I)I
    .locals 2
    .parameter "position"

    .prologue
    const v0, 0x7f02011b

    .line 5771
    invoke-virtual {p0}, Lcom/android/camera/Camera$FlashLightAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v1, p1, :cond_1

    if-nez p1, :cond_1

    .line 5778
    :cond_0
    :goto_0
    return v0

    .line 5773
    :cond_1
    if-nez p1, :cond_2

    .line 5774
    const v0, 0x7f020190

    goto :goto_0

    .line 5775
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/Camera$FlashLightAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v1, p1, :cond_0

    .line 5776
    const v0, 0x7f020012

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 5783
    iget-object v0, p0, Lcom/android/camera/Camera$FlashLightAdapter;->mIconId:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 5788
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 5793
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 5798
    if-nez p2, :cond_0

    .line 5799
    iget-object v2, p0, Lcom/android/camera/Camera$FlashLightAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04002c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 5800
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$FlashLightAdapter;->getItemBg(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 5802
    :cond_0
    const v2, 0x7f0d008d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 5803
    .local v0, icon:Landroid/widget/ImageView;
    const v2, 0x7f0d008e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 5804
    .local v1, text:Landroid/widget/TextView;
    iget v2, p0, Lcom/android/camera/Camera$FlashLightAdapter;->mCurSel:I

    if-ne p1, v2, :cond_1

    .line 5805
    iget-object v2, p0, Lcom/android/camera/Camera$FlashLightAdapter;->mIconId:[I

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5809
    :goto_0
    iget-object v2, p0, Lcom/android/camera/Camera$FlashLightAdapter;->mItemData:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5810
    return-object p2

    .line 5807
    :cond_1
    iget-object v2, p0, Lcom/android/camera/Camera$FlashLightAdapter;->mUnSelIconId:[I

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setCurSel(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 5767
    iput p1, p0, Lcom/android/camera/Camera$FlashLightAdapter;->mCurSel:I

    .line 5768
    return-void
.end method
