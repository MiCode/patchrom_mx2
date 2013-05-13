.class public Lcom/android/gallery3d/app/ActivityState$ShareAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActivityState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/ActivityState;
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
            "Lcom/android/gallery3d/app/ActivityState$ShareItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/gallery3d/app/ActivityState;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/ActivityState;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/app/ActivityState$ShareItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 487
    .local p3, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/app/ActivityState$ShareItem;>;"
    iput-object p1, p0, Lcom/android/gallery3d/app/ActivityState$ShareAdapter;->this$0:Lcom/android/gallery3d/app/ActivityState;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 472
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState$ShareAdapter;->mData:Ljava/util/ArrayList;

    .line 488
    iput-object p3, p0, Lcom/android/gallery3d/app/ActivityState$ShareAdapter;->mData:Ljava/util/ArrayList;

    .line 489
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState$ShareAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 490
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState$ShareAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState$ShareAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState$ShareAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/ActivityState$ShareItem;

    iget-wide v0, v0, Lcom/android/gallery3d/app/ActivityState$ShareItem;->mId:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 509
    if-nez p2, :cond_0

    .line 510
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState$ShareAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04007f

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 515
    .local v3, view:Landroid/view/View;
    :goto_0
    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 516
    .local v2, text:Landroid/widget/TextView;
    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 517
    .local v0, icon:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState$ShareAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/ActivityState$ShareItem;

    .line 518
    .local v1, item:Lcom/android/gallery3d/app/ActivityState$ShareItem;
    iget-object v4, v1, Lcom/android/gallery3d/app/ActivityState$ShareItem;->mText:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v4, v1, Lcom/android/gallery3d/app/ActivityState$ShareItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 520
    return-object v3

    .line 512
    .end local v0           #icon:Landroid/widget/ImageView;
    .end local v1           #item:Lcom/android/gallery3d/app/ActivityState$ShareItem;
    .end local v2           #text:Landroid/widget/TextView;
    .end local v3           #view:Landroid/view/View;
    :cond_0
    move-object v3, p2

    .restart local v3       #view:Landroid/view/View;
    goto :goto_0
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/app/ActivityState$ShareItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 476
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/app/ActivityState$ShareItem;>;"
    iput-object p1, p0, Lcom/android/gallery3d/app/ActivityState$ShareAdapter;->mData:Ljava/util/ArrayList;

    .line 477
    return-void
.end method
