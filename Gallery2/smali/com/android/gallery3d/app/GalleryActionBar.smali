.class public Lcom/android/gallery3d/app/GalleryActionBar;
.super Ljava/lang/Object;
.source "GalleryActionBar.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/GalleryActionBar$ClusterAdapter;,
        Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;,
        Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;
    }
.end annotation


# static fields
.field private static final sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActivity:Lcom/android/gallery3d/app/GalleryActivity;

.field private mAdapter:Lcom/android/gallery3d/app/GalleryActionBar$ClusterAdapter;

.field private mClusterRunner:Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;

.field private mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 79
    const/4 v0, 0x5

    new-array v11, v0, [Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    new-instance v0, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    const v4, 0x7f0a01ab

    const v5, 0x7f0a016c

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;-><init>(IZZII)V

    aput-object v0, v11, v3

    new-instance v4, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    const v8, 0x7f0a01ad

    const v9, 0x7f0a0182

    const v10, 0x7f0a0168

    move v5, v13

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;-><init>(IZZIII)V

    aput-object v4, v11, v1

    new-instance v4, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    const v8, 0x7f0a01ac

    const v9, 0x7f0a0181

    const v10, 0x7f0a0169

    move v5, v12

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;-><init>(IZZIII)V

    aput-object v4, v11, v12

    const/4 v0, 0x3

    new-instance v4, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    const/16 v5, 0x20

    const v8, 0x7f0a01ae

    const v9, 0x7f0a016b

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;-><init>(IZZII)V

    aput-object v4, v11, v0

    new-instance v4, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    const/16 v5, 0x8

    const v8, 0x7f0a01af

    const v9, 0x7f0a016a

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;-><init>(IZZII)V

    aput-object v4, v11, v13

    sput-object v11, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 135
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/gallery3d/app/GalleryActionBar$ClusterAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/GalleryActionBar$ClusterAdapter;-><init>(Lcom/android/gallery3d/app/GalleryActionBar;Lcom/android/gallery3d/app/GalleryActionBar$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mAdapter:Lcom/android/gallery3d/app/GalleryActionBar$ClusterAdapter;

    move-object v0, p1

    .line 136
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    .line 137
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mContext:Landroid/content/Context;

    .line 138
    iput-object p1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    .line 139
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mInflater:Landroid/view/LayoutInflater;

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mCurrentIndex:I

    .line 141
    return-void
.end method

.method static synthetic access$100()[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/GalleryActionBar;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/GalleryActionBar;)Lcom/android/gallery3d/app/GalleryActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    return-object v0
.end method

.method public static getClusterByTypeString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "type"

    .prologue
    .line 118
    sget-object v0, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    .local v0, arr$:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 119
    .local v2, item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    iget v4, v2, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    if-ne v4, p1, :cond_0

    .line 120
    iget v4, v2, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->clusterBy:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 123
    .end local v2           #item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    :goto_1
    return-object v4

    .line 118
    .restart local v2       #item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    .end local v2           #item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static initializeShareActionProvider(Landroid/view/Menu;)Landroid/widget/ShareActionProvider;
    .locals 3
    .parameter "menu"

    .prologue
    .line 127
    const v2, 0x7f0d01ae

    invoke-interface {p0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 128
    .local v0, item:Landroid/view/MenuItem;
    const/4 v1, 0x0

    .line 129
    .local v1, shareActionProvider:Landroid/widget/ShareActionProvider;
    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v1

    .end local v1           #shareActionProvider:Landroid/widget/ShareActionProvider;
    check-cast v1, Landroid/widget/ShareActionProvider;

    .line 132
    .restart local v1       #shareActionProvider:Landroid/widget/ShareActionProvider;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 255
    :cond_0
    return-void
.end method

.method public getActionBar()Landroid/app/ActionBar;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 251
    :cond_0
    return-void
.end method

.method public onNavigationItemSelected(IJ)Z
    .locals 2
    .parameter "itemPosition"
    .parameter "itemId"

    .prologue
    .line 277
    iget v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mCurrentIndex:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mClusterRunner:Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mClusterRunner:Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;

    sget-object v1, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;->doCluster(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 287
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 284
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v0
.end method

.method public removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 259
    :cond_0
    return-void
.end method

.method public setDisplayOptions(ZZ)V
    .locals 3
    .parameter "displayHomeAsUp"
    .parameter "showTitle"

    .prologue
    const/4 v1, 0x0

    .line 224
    iget-object v2, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_1

    .line 225
    if-eqz p1, :cond_2

    const/4 v2, 0x4

    :goto_0
    if-eqz p2, :cond_0

    const/16 v1, 0x8

    :cond_0
    or-int v0, v2, v1

    .line 227
    .local v0, options:I
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    const/16 v2, 0xc

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 229
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 231
    .end local v0           #options:I
    :cond_1
    return-void

    :cond_2
    move v2, v1

    .line 225
    goto :goto_0
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 243
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "titleId"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 239
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 235
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 247
    :cond_0
    return-void
.end method

.method public useMzTitleLayout(Z)V
    .locals 1
    .parameter "used"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->useMzTitleLayout(Z)V

    .line 292
    return-void
.end method
