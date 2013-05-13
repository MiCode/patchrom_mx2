.class public Lcom/android/camera/SubMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "SubMenuAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurSel:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemData:[Ljava/lang/String;

.field private mItemVaule:[Ljava/lang/String;

.field private mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "resId"
    .parameter "vauleId"
    .parameter "key"
    .parameter "selIndex"

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/SubMenuAdapter;->mCurSel:I

    .line 25
    iput-object p1, p0, Lcom/android/camera/SubMenuAdapter;->mContext:Landroid/content/Context;

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SubMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SubMenuAdapter;->mItemData:[Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SubMenuAdapter;->mItemVaule:[Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/android/camera/SubMenuAdapter;->mKey:Ljava/lang/String;

    .line 30
    iput p5, p0, Lcom/android/camera/SubMenuAdapter;->mCurSel:I

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/SubMenuAdapter;->mItemData:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/SubMenuAdapter;->mItemData:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 59
    int-to-long v0, p1

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/SubMenuAdapter;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getVaule(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/SubMenuAdapter;->mItemVaule:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 64
    if-nez p2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/android/camera/SubMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04007e

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 67
    :cond_0
    const v2, 0x1020014

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 68
    .local v0, ct:Landroid/widget/CheckedTextView;
    const v2, 0x7f0d00a9

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 69
    .local v1, v1:Landroid/view/View;
    iget-object v2, p0, Lcom/android/camera/SubMenuAdapter;->mItemData:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_1

    .line 70
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    :goto_0
    iget-object v2, p0, Lcom/android/camera/SubMenuAdapter;->mItemData:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget v2, p0, Lcom/android/camera/SubMenuAdapter;->mCurSel:I

    if-ne p1, v2, :cond_2

    .line 76
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 77
    const v2, -0xd14a1a

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    .line 83
    :goto_1
    return-object p2

    .line 72
    :cond_1
    const v2, 0x7f020118

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 79
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 80
    const v2, -0x1a1a1b

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    goto :goto_1
.end method

.method public setCurSel(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 52
    if-ltz p1, :cond_0

    .line 53
    iput p1, p0, Lcom/android/camera/SubMenuAdapter;->mCurSel:I

    .line 55
    :cond_0
    return-void
.end method
