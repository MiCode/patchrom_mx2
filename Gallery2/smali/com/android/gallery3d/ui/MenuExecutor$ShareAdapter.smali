.class public Lcom/android/gallery3d/ui/MenuExecutor$ShareAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/MenuExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShareAdapter"
.end annotation


# instance fields
.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/ui/MenuExecutor$ShareItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$ShareAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$ShareAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 755
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$ShareAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/MenuExecutor$ShareItem;

    iget-wide v0, v0, Lcom/android/gallery3d/ui/MenuExecutor$ShareItem;->mId:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 761
    if-nez p2, :cond_0

    .line 762
    iget-object v4, p0, Lcom/android/gallery3d/ui/MenuExecutor$ShareAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04007f

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 767
    .local v3, view:Landroid/view/View;
    :goto_0
    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 768
    .local v2, text:Landroid/widget/TextView;
    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 769
    .local v0, icon:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/gallery3d/ui/MenuExecutor$ShareAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/MenuExecutor$ShareItem;

    .line 770
    .local v1, item:Lcom/android/gallery3d/ui/MenuExecutor$ShareItem;
    iget-object v4, v1, Lcom/android/gallery3d/ui/MenuExecutor$ShareItem;->mText:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 771
    iget-object v4, v1, Lcom/android/gallery3d/ui/MenuExecutor$ShareItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 772
    return-object v3

    .line 764
    .end local v0           #icon:Landroid/widget/ImageView;
    .end local v1           #item:Lcom/android/gallery3d/ui/MenuExecutor$ShareItem;
    .end local v2           #text:Landroid/widget/TextView;
    .end local v3           #view:Landroid/view/View;
    :cond_0
    move-object v3, p2

    .restart local v3       #view:Landroid/view/View;
    goto :goto_0
.end method
