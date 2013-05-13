.class public Lcom/android/gallery3d/photoeditor/PhotoEditor;
.super Landroid/app/Activity;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$DoodleShapeChangeListener;
.implements Lcom/android/gallery3d/photoeditor/DoodleTextDialog$DoodleTextChangeListener;
.implements Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar$ItemSelectedListener;
.implements Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DoodleEraserChangeListener;
.implements Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintChangeListener;
.implements Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleViewChanged;


# static fields
.field public static ACTION_BAR_HEIGHT:I

.field public static STATUS_BAR_HEIGHT:I


# instance fields
.field private actionBarCustomView:Landroid/view/View;

.field private canSave:Z

.field private doodleColor:I

.field private doodleColorAlpha:I

.field private doodleColorDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private doodleColorPickLayout:Landroid/view/View;

.field private doodleColorPickResult:Landroid/widget/TextView;

.field private doodleColorPreview:Landroid/widget/ImageView;

.field private doodleModeSelectLayout:Landroid/view/View;

.field private doodlePaintSize:F

.field private doodleTextColor:I

.field private doodleTextSize:F

.field private doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

.field private effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

.field private eraserPaintSize:F

.field private eraserSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

.field private filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

.field private hasDoodleText:Z

.field private isPortrait:Z

.field private isShared:Z

.field private mIsMarkedMode:Z

.field private mMzRecentReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mhasPermanentMenuKey:Z

.field private needSaveShareTempFile:Z

.field private paintSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

.field private photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

.field private photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private saveMenuItem:Landroid/view/MenuItem;

.field private saveUri:Landroid/net/Uri;

.field private screenWidth:I

.field private selectedShapeId:I

.field private selectedTextId:I

.field private shapeColor:I

.field private shapeSettingDialog:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

.field private shareMenuItem:Landroid/view/MenuItem;

.field private shareTempFile:Ljava/lang/String;

.field private sourceBtimap:Landroid/graphics/Bitmap;

.field private sourceUri:Landroid/net/Uri;

.field private systemActionBar:Landroid/app/ActionBar;

.field private textSettingDialog:Lcom/android/gallery3d/photoeditor/DoodleTextDialog;

.field private toolbar:Lcom/android/gallery3d/photoeditor/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 118
    iput-boolean v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->isPortrait:Z

    .line 119
    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->hasDoodleText:Z

    .line 121
    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->canSave:Z

    .line 123
    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->isShared:Z

    .line 124
    iput-boolean v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->needSaveShareTempFile:Z

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->sourceBtimap:Landroid/graphics/Bitmap;

    .line 274
    new-instance v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$2;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 286
    new-instance v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$3;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$3;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->mMzRecentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/EffectsBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/gallery3d/photoeditor/PhotoEditor;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->sourceBtimap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/FilterStack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->mIsMarkedMode:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/actions/DoodleView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/gallery3d/photoeditor/PhotoEditor;Lcom/android/gallery3d/photoeditor/actions/DoodleView;)Lcom/android/gallery3d/photoeditor/actions/DoodleView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/actions/DoodleView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->getDoodleView()Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->initDoodleParams()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveFilter()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/gallery3d/photoeditor/PhotoEditor;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->createYesCancelDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->canSave:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->savePhoto()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/gallery3d/photoeditor/PhotoEditor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->canSave:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->isShared:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/gallery3d/photoeditor/PhotoEditor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->shareTempFile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/gallery3d/photoeditor/PhotoEditor;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->initShareIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->sourceUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/PhotoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->enterDoodleEditMode()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->enterDoodleEraserMode()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->enterDoodleShapeMode()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->enterDoodleTextMode()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->undo()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->redo()V

    return-void
.end method

.method private createApplyRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 712
    new-instance v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$14;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$14;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    return-object v0
.end method

.method private createBackRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 744
    new-instance v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$16;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$16;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    return-object v0
.end method

.method private createEffectsArtisticRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 774
    new-instance v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$17;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$17;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    return-object v0
.end method

.method private createEffectsExposureRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 783
    new-instance v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$18;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$18;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    return-object v0
.end method

.method private createSaveRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 702
    new-instance v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$13;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$13;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    return-object v0
.end method

.method private createShareRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 723
    new-instance v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$15;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$15;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    return-object v0
.end method

.method private createUndoRedoRunnable(Z)Ljava/lang/Runnable;
    .locals 1
    .parameter "undo"

    .prologue
    .line 673
    new-instance v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$12;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/photoeditor/PhotoEditor$12;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;Z)V

    return-object v0
.end method

.method private createYesCancelDialog()V
    .locals 4

    .prologue
    .line 792
    new-instance v0, Lcom/android/gallery3d/photoeditor/YesCancelDialogBuilder;

    new-instance v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$19;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$19;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    new-instance v2, Lcom/android/gallery3d/photoeditor/PhotoEditor$20;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$20;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    const v3, 0x7f0a00ce

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/gallery3d/photoeditor/YesCancelDialogBuilder;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/YesCancelDialogBuilder;->show()Landroid/app/AlertDialog;

    .line 814
    return-void
.end method

.method private enterDoodleEditMode()V
    .locals 4

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    if-eqz v0, :cond_2

    .line 582
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getDoodleMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->paintSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    if-nez v0, :cond_0

    .line 584
    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->paintSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    .line 585
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->paintSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->setOnDoodlePaintParamsListener(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintChangeListener;)V

    .line 586
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->paintSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColor:I

    iget v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColorAlpha:I

    iget v3, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodlePaintSize:F

    float-to-int v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->setPathPaintParams(III)V

    .line 587
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->paintSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColor:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->locateColor(I)V

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->paintSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBarCustomView:Landroid/view/View;

    const v2, 0x7f0d013c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->screenWidth:I

    iget-boolean v3, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->isPortrait:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->show(Landroid/view/View;IZ)V

    .line 591
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setEditMode()V

    .line 593
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->setDoodleIconBackground(I)V

    .line 594
    return-void
.end method

.method private enterDoodleEraserMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 597
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    if-eqz v0, :cond_2

    .line 598
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getDoodleMode()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 599
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->eraserSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    if-nez v0, :cond_0

    .line 600
    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->eraserSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    .line 601
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->eraserSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->setOnEraserParamsListener(Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DoodleEraserChangeListener;)V

    .line 602
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->eraserSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->eraserPaintSize:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->setEraserPaintSize(I)V

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->eraserSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBarCustomView:Landroid/view/View;

    const v2, 0x7f0d013c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->screenWidth:I

    iget-boolean v3, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->isPortrait:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->show(Landroid/view/View;IZ)V

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setEraserMode()V

    .line 608
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->setDoodleIconBackground(I)V

    .line 609
    return-void
.end method

.method private enterDoodleShapeMode()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 612
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    if-eqz v0, :cond_2

    .line 613
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getDoodleMode()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 614
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->shapeSettingDialog:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    if-nez v0, :cond_0

    .line 615
    new-instance v0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->shapeSettingDialog:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    .line 616
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->shapeSettingDialog:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->setOnShapeChangeListener(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$DoodleShapeChangeListener;)V

    .line 617
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->shapeSettingDialog:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->shapeColor:I

    iget v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->selectedShapeId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->setShapeParams(II)V

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->shapeSettingDialog:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBarCustomView:Landroid/view/View;

    const v2, 0x7f0d013c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->screenWidth:I

    iget-boolean v3, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->isPortrait:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->show(Landroid/view/View;IZ)V

    .line 621
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setShapeMode()V

    .line 623
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->setDoodleIconBackground(I)V

    .line 624
    return-void
.end method

.method private enterDoodleTextMode()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 627
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    if-eqz v0, :cond_2

    .line 628
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getDoodleMode()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 629
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->textSettingDialog:Lcom/android/gallery3d/photoeditor/DoodleTextDialog;

    if-nez v0, :cond_0

    .line 630
    new-instance v0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->textSettingDialog:Lcom/android/gallery3d/photoeditor/DoodleTextDialog;

    .line 631
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->textSettingDialog:Lcom/android/gallery3d/photoeditor/DoodleTextDialog;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->setOnTextSettingChangeListener(Lcom/android/gallery3d/photoeditor/DoodleTextDialog$DoodleTextChangeListener;)V

    .line 632
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->textSettingDialog:Lcom/android/gallery3d/photoeditor/DoodleTextDialog;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleTextColor:I

    iget v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->selectedTextId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->setTextParams(II)V

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->textSettingDialog:Lcom/android/gallery3d/photoeditor/DoodleTextDialog;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBarCustomView:Landroid/view/View;

    const v2, 0x7f0d013c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->screenWidth:I

    iget-boolean v3, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->isPortrait:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->show(Landroid/view/View;IZ)V

    .line 636
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setTextMode()V

    .line 638
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->setDoodleIconBackground(I)V

    .line 639
    return-void
.end method

.method private getDoodleView()Lcom/android/gallery3d/photoeditor/actions/DoodleView;
    .locals 2

    .prologue
    .line 872
    .line 873
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->toolbar:Lcom/android/gallery3d/photoeditor/Toolbar;

    const v1, 0x7f0d010f

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    .line 874
    return-object v0
.end method

.method private initDoodleParams()V
    .locals 7

    .prologue
    const/16 v6, 0x98

    const/4 v5, 0x0

    const/high16 v2, 0x4100

    const/high16 v4, -0x1

    .line 460
    const-string v1, "com.android.gallery3d_preferences"

    invoke-virtual {p0, v1, v5}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 461
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v1, "doodle_easerpaint_size"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->eraserPaintSize:F

    .line 462
    const-string v1, "doodle_editpaint_size"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodlePaintSize:F

    .line 463
    const-string v1, "doodle_editpaint_color"

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v6, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColor:I

    .line 465
    const-string v1, "doodle_editpaint_alpha"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColorAlpha:I

    .line 466
    const-string v1, "doodle_shape_color"

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080056

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->shapeColor:I

    .line 467
    const-string v1, "doodle_shape_id"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->selectedShapeId:I

    .line 468
    const-string v1, "doodle_text_color"

    const/high16 v2, -0x100

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleTextColor:I

    .line 469
    const-string v1, "doodle_text_size"

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09031e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleTextSize:F

    .line 470
    const-string v1, "doodle_text_id"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->selectedTextId:I

    .line 472
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    if-eqz v1, :cond_0

    .line 473
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    iget v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->eraserPaintSize:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setEraserPaintSize(I)V

    .line 474
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    iget v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodlePaintSize:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setDoodlePaintSize(I)V

    .line 475
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    iget v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColorAlpha:I

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setDoodlePaintAlpha(I)V

    .line 476
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    iget v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColor:I

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setDoodlePaintColor(I)V

    .line 477
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    iget v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->selectedShapeId:I

    iget v3, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->shapeColor:I

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setShapeChange(II)V

    .line 478
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    iget v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->selectedTextId:I

    iget v3, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleTextSize:F

    iget v4, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleTextColor:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setTextSettingChange(IFI)V

    .line 481
    :cond_0
    return-void
.end method

.method private initShareIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .parameter "uri"

    .prologue
    .line 344
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 345
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 348
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 349
    return-object v0
.end method

.method private openPhoto()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 397
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setIsOpenGallery(Z)V

    .line 398
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->sourceBtimap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 399
    new-instance v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$10;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$10;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    .line 445
    .local v0, callback:Lcom/android/gallery3d/photoeditor/LoadScreennailTask$Callback;
    new-instance v1, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;

    invoke-direct {v1, p0, v0}, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;-><init>(Landroid/content/Context;Lcom/android/gallery3d/photoeditor/LoadScreennailTask$Callback;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->sourceUri:Landroid/net/Uri;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 457
    .end local v0           #callback:Lcom/android/gallery3d/photoeditor/LoadScreennailTask$Callback;
    :goto_0
    return-void

    .line 447
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->sourceBtimap:Landroid/graphics/Bitmap;

    new-instance v3, Lcom/android/gallery3d/photoeditor/PhotoEditor$11;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$11;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/photoeditor/FilterStack;->setPhotoSource(Landroid/graphics/Bitmap;Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V

    goto :goto_0
.end method

.method private redo()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 571
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    if-eqz v1, :cond_0

    .line 572
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->redo(Z)Z

    move-result v0

    .line 573
    .local v0, canRedo:Z
    invoke-direct {p0, v2, v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->updateDoodleStateButton(ZZ)V

    .line 574
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 575
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->shareMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 576
    iput-boolean v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->needSaveShareTempFile:Z

    .line 578
    .end local v0           #canRedo:Z
    :cond_0
    return-void
.end method

.method private saveDoodleParams()V
    .locals 4

    .prologue
    .line 484
    const-string v2, "com.android.gallery3d_preferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 485
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 486
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "doodle_easerpaint_size"

    iget v3, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->eraserPaintSize:F

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 487
    const-string v2, "doodle_editpaint_color"

    iget v3, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColor:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 488
    const-string v2, "doodle_editpaint_alpha"

    iget v3, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColorAlpha:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 489
    const-string v2, "doodle_editpaint_size"

    iget v3, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodlePaintSize:F

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 490
    const-string v2, "doodle_shape_color"

    iget v3, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->shapeColor:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 491
    const-string v2, "doodle_shape_id"

    iget v3, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->selectedShapeId:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 492
    const-string v2, "doodle_text_color"

    iget v3, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleTextColor:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 493
    const-string v2, "doodle_text_size"

    iget v3, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleTextSize:F

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 494
    const-string v2, "doodle_text_id"

    iget v3, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->selectedTextId:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 495
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 496
    return-void
.end method

.method private saveFilter()V
    .locals 2

    .prologue
    .line 827
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    new-instance v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$22;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$22;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->exit(Ljava/lang/Runnable;)Z

    .line 833
    return-void
.end method

.method private savePhoto()V
    .locals 2

    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 837
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->progressDialog:Landroid/app/ProgressDialog;

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 840
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 841
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    new-instance v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$23;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$23;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/FilterStack;->getOutputBitmap(Lcom/android/gallery3d/photoeditor/OnDoneBitmapCallback;)V

    .line 869
    return-void
.end method

.method private saveSharedPhoto()V
    .locals 2

    .prologue
    .line 817
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    new-instance v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$21;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$21;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/FilterStack;->topFilterChanged(Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V

    .line 823
    return-void
.end method

.method private setDoodleIconBackground(I)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f0d0146

    const v5, 0x7f0d0143

    const v4, 0x7f0d0140

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 642
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->systemActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBarCustomView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 644
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBarCustomView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 645
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBarCustomView:Landroid/view/View;

    const v1, 0x7f0d0149

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 646
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBarCustomView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 647
    packed-switch p1, :pswitch_data_0

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 649
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBarCustomView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 654
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBarCustomView:Landroid/view/View;

    const v1, 0x7f0d0149

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 659
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBarCustomView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 664
    :pswitch_3
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBarCustomView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 647
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setSystemActionBarOnClickListener()V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBarCustomView:Landroid/view/View;

    const v1, 0x7f0d0145

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$4;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$4;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBarCustomView:Landroid/view/View;

    const v1, 0x7f0d0148

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$5;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$5;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBarCustomView:Landroid/view/View;

    const v1, 0x7f0d0142

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$6;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$6;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBarCustomView:Landroid/view/View;

    const v1, 0x7f0d013f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$7;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$7;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBarCustomView:Landroid/view/View;

    const v1, 0x7f0d014a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$8;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$8;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBarCustomView:Landroid/view/View;

    const v1, 0x7f0d014b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$9;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$9;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    return-void
.end method

.method private undo()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 559
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    if-eqz v1, :cond_0

    .line 560
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->undo(Z)Z

    move-result v0

    .line 561
    .local v0, canUndo:Z
    invoke-direct {p0, v0, v2}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->updateDoodleStateButton(ZZ)V

    .line 562
    iget-boolean v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->hasDoodleText:Z

    if-nez v1, :cond_0

    .line 563
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 564
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->shareMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 565
    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->needSaveShareTempFile:Z

    .line 568
    .end local v0           #canUndo:Z
    :cond_0
    return-void
.end method

.method private updataDoodleShapeButtonSelected(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 515
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBarCustomView:Landroid/view/View;

    const v1, 0x7f0d0142

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 516
    if-gez p1, :cond_0

    .line 517
    const-string v1, "com.android.gallery3d_preferences"

    invoke-virtual {p0, v1, v3}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 518
    const-string v2, "doodle_shape_id"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 520
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 551
    :goto_0
    return-void

    .line 522
    :pswitch_0
    const v1, 0x7f02012a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 527
    :pswitch_1
    const v1, 0x7f02012d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 532
    :pswitch_2
    const v1, 0x7f020130

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 537
    :pswitch_3
    const v1, 0x7f02012f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 542
    :pswitch_4
    const v1, 0x7f02012e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 547
    :pswitch_5
    const v1, 0x7f02012c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 520
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateDoodleSettingsWindow()V
    .locals 3

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->paintSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->paintSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->paintSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->dismiss()V

    .line 501
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->paintSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->screenWidth:I

    iget-boolean v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->isPortrait:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->update(IZ)V

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->eraserSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->eraserSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 503
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->eraserSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->dismiss()V

    .line 504
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->eraserSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->screenWidth:I

    iget-boolean v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->isPortrait:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->update(IZ)V

    goto :goto_0

    .line 505
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->shapeSettingDialog:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->shapeSettingDialog:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 506
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->shapeSettingDialog:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->dismiss()V

    .line 507
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->shapeSettingDialog:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->screenWidth:I

    iget-boolean v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->isPortrait:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->update(IZ)V

    goto :goto_0

    .line 508
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->textSettingDialog:Lcom/android/gallery3d/photoeditor/DoodleTextDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->textSettingDialog:Lcom/android/gallery3d/photoeditor/DoodleTextDialog;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->textSettingDialog:Lcom/android/gallery3d/photoeditor/DoodleTextDialog;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->dismiss()V

    .line 510
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->textSettingDialog:Lcom/android/gallery3d/photoeditor/DoodleTextDialog;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->screenWidth:I

    iget-boolean v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->isPortrait:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->update(IZ)V

    goto :goto_0
.end method

.method private updateDoodleStateButton(ZZ)V
    .locals 2
    .parameter "undoEnabled"
    .parameter "redoEnabled"

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBarCustomView:Landroid/view/View;

    const v1, 0x7f0d014a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 555
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBarCustomView:Landroid/view/View;

    const v1, 0x7f0d014b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 556
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 886
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColorPickLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColorPickLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColorPickLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 888
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleModeSelectLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 889
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->exitColorPickMode()V

    .line 893
    :goto_0
    return-void

    .line 891
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->clickBack()V

    goto :goto_0
.end method

.method public onClearDoodles()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1102
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->clearDoodles()V

    .line 1103
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->eraserSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->dismiss()V

    .line 1105
    invoke-direct {p0, v1, v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->updateDoodleStateButton(ZZ)V

    .line 1106
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1107
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->shareMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1108
    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "newConfig"

    .prologue
    const v7, 0x7f0d0139

    const v6, 0x7f0d0109

    const v5, 0x7f0d0102

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1016
    iget-boolean v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->mIsMarkedMode:Z

    if-nez v1, :cond_0

    .line 1017
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1018
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/EffectsBar;->updateEffectLayout(Z)V

    .line 1019
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-virtual {v1, v7}, Lcom/android/gallery3d/photoeditor/EffectsBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1020
    iget-boolean v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->mhasPermanentMenuKey:Z

    if-eqz v1, :cond_1

    .line 1021
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    invoke-virtual {v1, v5}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1025
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    invoke-virtual {v1, v6}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1026
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->setLongClickListener()V

    .line 1034
    :goto_1
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getActiveEffectAction()Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    move-result-object v0

    .line 1035
    .local v0, action:Lcom/android/gallery3d/photoeditor/actions/EffectAction;
    if-eqz v0, :cond_3

    .line 1036
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->doBegin(Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V

    .line 1040
    :goto_2
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    iget-boolean v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->canSave:Z

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/EffectsBar;->updateSave(Z)V

    .line 1042
    .end local v0           #action:Lcom/android/gallery3d/photoeditor/actions/EffectAction;
    :cond_0
    return-void

    .line 1023
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    invoke-virtual {v1, v5}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1028
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/photoeditor/EffectsBar;->updateEffectLayout(Z)V

    .line 1029
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-virtual {v1, v7}, Lcom/android/gallery3d/photoeditor/EffectsBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1030
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    invoke-virtual {v1, v5}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1031
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    invoke-virtual {v1, v6}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1032
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setEffectsMenuLongClickListener()V

    goto :goto_1

    .line 1038
    .restart local v0       #action:Lcom/android/gallery3d/photoeditor/actions/EffectAction;
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->doEffectMenuSelected()V

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "newConfig"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 976
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 977
    iget-boolean v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->mIsMarkedMode:Z

    if-eqz v6, :cond_3

    .line 978
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBarCustomView:Landroid/view/View;

    const v7, 0x7f0d014a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->isEnabled()Z

    move-result v2

    .line 979
    .local v2, undoEnabled:Z
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBarCustomView:Landroid/view/View;

    const v7, 0x7f0d014b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->isEnabled()Z

    move-result v0

    .line 981
    .local v0, redoEnabled:Z
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->systemActionBar:Landroid/app/ActionBar;

    const v7, 0x7f040064

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 982
    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v4, :cond_1

    :goto_0
    iput-boolean v4, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->isPortrait:Z

    .line 983
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->screenWidth:I

    .line 984
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->systemActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBarCustomView:Landroid/view/View;

    .line 986
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->updateDoodleSettingsWindow()V

    .line 987
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    if-eqz v4, :cond_0

    .line 988
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-virtual {v4}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getDoodleMode()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->setDoodleIconBackground(I)V

    .line 989
    iget v4, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->selectedShapeId:I

    invoke-direct {p0, v4}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->updataDoodleShapeButtonSelected(I)V

    .line 991
    :cond_0
    invoke-direct {p0, v2, v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->updateDoodleStateButton(ZZ)V

    .line 992
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->setSystemActionBarOnClickListener()V

    .line 994
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColorPickResult:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 995
    .local v1, string:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColorPickLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    .line 996
    .local v3, visibility:I
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBarCustomView:Landroid/view/View;

    const v6, 0x7f0d014e

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColorPickResult:Landroid/widget/TextView;

    .line 997
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColorPickResult:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 998
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBarCustomView:Landroid/view/View;

    const v6, 0x7f0d014d

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColorPreview:Landroid/widget/ImageView;

    .line 999
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColorPreview:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1000
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBarCustomView:Landroid/view/View;

    const v6, 0x7f0d014c

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColorPickLayout:Landroid/view/View;

    .line 1001
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColorPickLayout:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1002
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBarCustomView:Landroid/view/View;

    const v6, 0x7f0d013b

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleModeSelectLayout:Landroid/view/View;

    .line 1003
    if-nez v3, :cond_2

    .line 1004
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleModeSelectLayout:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1012
    .end local v0           #redoEnabled:Z
    .end local v1           #string:Ljava/lang/String;
    .end local v2           #undoEnabled:Z
    .end local v3           #visibility:I
    :goto_1
    return-void

    .restart local v0       #redoEnabled:Z
    .restart local v2       #undoEnabled:Z
    :cond_1
    move v4, v5

    .line 982
    goto/16 :goto_0

    .line 1006
    .restart local v1       #string:Ljava/lang/String;
    .restart local v3       #visibility:I
    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleModeSelectLayout:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1009
    .end local v0           #redoEnabled:Z
    .end local v1           #string:Ljava/lang/String;
    .end local v2           #undoEnabled:Z
    .end local v3           #visibility:I
    :cond_3
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->systemActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6, v4}, Landroid/app/ActionBar;->setActionBarViewCollapsable(Z)V

    .line 1010
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->systemActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    const-string v8, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->finish()V

    .line 271
    :goto_0
    return-void

    .line 141
    :cond_0
    const/16 v8, 0x8

    invoke-virtual {p0, v8}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->requestWindowFeature(I)Z

    .line 142
    const/16 v8, 0x9

    invoke-virtual {p0, v8}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->requestWindowFeature(I)Z

    .line 143
    const v8, 0x7f040060

    invoke-virtual {p0, v8}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->setContentView(I)V

    .line 145
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 146
    .local v6, win:Landroid/view/Window;
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    .line 147
    .local v7, winParams:Landroid/view/WindowManager$LayoutParams;
    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v8, v8, 0x80

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 148
    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/view/WindowManager$LayoutParams;->imeOffsetDisabled:Z

    .line 149
    invoke-virtual {v6, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 152
    .local v1, intent:Landroid/content/Intent;
    const-string v8, "marked_mode"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->mIsMarkedMode:Z

    .line 154
    const-string v8, "android.intent.action.EDIT"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 155
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    iput-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->sourceUri:Landroid/net/Uri;

    .line 158
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1050015

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sput v8, Lcom/android/gallery3d/photoeditor/PhotoEditor;->STATUS_BAR_HEIGHT:I

    .line 159
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10500a3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sput v8, Lcom/android/gallery3d/photoeditor/PhotoEditor;->ACTION_BAR_HEIGHT:I

    .line 161
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    iput-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->systemActionBar:Landroid/app/ActionBar;

    .line 162
    const v8, 0x7f0d0135

    invoke-virtual {p0, v8}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/photoeditor/Toolbar;

    iput-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->toolbar:Lcom/android/gallery3d/photoeditor/Toolbar;

    .line 163
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->toolbar:Lcom/android/gallery3d/photoeditor/Toolbar;

    const/16 v9, 0x100

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/photoeditor/Toolbar;->setSystemUiVisibility(I)V

    .line 164
    const v8, 0x7f0d013a

    invoke-virtual {p0, v8}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    iput-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    .line 165
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    iget-boolean v9, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->mIsMarkedMode:Z

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->setIsMarkedMode(Z)V

    .line 166
    iget-boolean v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->mIsMarkedMode:Z

    if-eqz v8, :cond_3

    .line 167
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->screenWidth:I

    .line 168
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->setVisibility(I)V

    .line 169
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->systemActionBar:Landroid/app/ActionBar;

    const v9, 0x7f040064

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 170
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->systemActionBar:Landroid/app/ActionBar;

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 172
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->systemActionBar:Landroid/app/ActionBar;

    invoke-virtual {v8}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBarCustomView:Landroid/view/View;

    .line 173
    const/4 v8, -0x1

    invoke-direct {p0, v8}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->updataDoodleShapeButtonSelected(I)V

    .line 174
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->setSystemActionBarOnClickListener()V

    .line 175
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->updateDoodleStateButton(ZZ)V

    .line 176
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBarCustomView:Landroid/view/View;

    const v9, 0x7f0d014e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColorPickResult:Landroid/widget/TextView;

    .line 177
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBarCustomView:Landroid/view/View;

    const v9, 0x7f0d014d

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColorPreview:Landroid/widget/ImageView;

    .line 178
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBarCustomView:Landroid/view/View;

    const v9, 0x7f0d014c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColorPickLayout:Landroid/view/View;

    .line 179
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBarCustomView:Landroid/view/View;

    const v9, 0x7f0d013b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleModeSelectLayout:Landroid/view/View;

    .line 185
    :goto_1
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    invoke-virtual {v8, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->setItemSelectedListener(Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar$ItemSelectedListener;)V

    .line 186
    const v8, 0x7f0d0137

    invoke-virtual {p0, v8}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/photoeditor/PhotoView;

    iput-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    .line 188
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    invoke-virtual {v8}, Lcom/android/gallery3d/photoeditor/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 189
    .local v2, metrics:Landroid/util/DisplayMetrics;
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    invoke-virtual {v8}, Lcom/android/gallery3d/photoeditor/PhotoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 190
    .local v3, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v8, v9, :cond_4

    .line 191
    sget v8, Lcom/android/gallery3d/photoeditor/PhotoEditor;->ACTION_BAR_HEIGHT:I

    iput v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 195
    :goto_2
    iget-boolean v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->mIsMarkedMode:Z

    if-eqz v8, :cond_5

    .line 196
    sget v8, Lcom/android/gallery3d/photoeditor/PhotoEditor;->ACTION_BAR_HEIGHT:I

    iput v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 200
    :goto_3
    iget v8, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v8, v9

    iget v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v8, v9

    sget v9, Lcom/android/gallery3d/photoeditor/PhotoEditor;->STATUS_BAR_HEIGHT:I

    sub-int/2addr v8, v9

    iput v8, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 202
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    iget-boolean v9, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->mIsMarkedMode:Z

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/photoeditor/PhotoView;->setIsMarkedMode(Z)V

    .line 203
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->toolbar:Lcom/android/gallery3d/photoeditor/Toolbar;

    iget-object v9, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/photoeditor/Toolbar;->setPhotoView(Lcom/android/gallery3d/photoeditor/PhotoView;)V

    .line 204
    new-instance v8, Lcom/android/gallery3d/photoeditor/FilterStack;

    iget-object v9, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    new-instance v10, Lcom/android/gallery3d/photoeditor/PhotoEditor$1;

    invoke-direct {v10, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$1;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    invoke-direct {v8, v9, v10, p1}, Lcom/android/gallery3d/photoeditor/FilterStack;-><init>(Lcom/android/gallery3d/photoeditor/PhotoView;Lcom/android/gallery3d/photoeditor/FilterStack$StackListener;Landroid/os/Bundle;)V

    iput-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    .line 216
    if-eqz p1, :cond_2

    .line 217
    const-string v8, "save_uri"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    iput-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;

    .line 218
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    if-eqz v8, :cond_2

    .line 219
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;

    if-nez v8, :cond_6

    const/4 v8, 0x1

    :goto_4
    iput-boolean v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->canSave:Z

    .line 220
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    iget-boolean v9, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->canSave:Z

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/photoeditor/EffectsBar;->updateSave(Z)V

    .line 225
    :cond_2
    const v8, 0x7f0d0138

    invoke-virtual {p0, v8}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/photoeditor/EffectsBar;

    iput-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    .line 226
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    iget-object v9, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    iget-boolean v11, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->mIsMarkedMode:Z

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/gallery3d/photoeditor/EffectsBar;->initialize(Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;Z)V

    .line 227
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setEnabled(Z)V

    .line 228
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/photoeditor/EffectsBar;->updateSave(Z)V

    .line 230
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v9, 0x7f0d0104

    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->createUndoRedoRunnable(Z)Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 231
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v9, 0x7f0d0105

    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->createUndoRedoRunnable(Z)Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 232
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v9, 0x7f0d0107

    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->createSaveRunnable()Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 233
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v9, 0x7f0d0108

    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->createShareRunnable()Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 234
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v9, 0x7f0d0102

    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->createBackRunnable()Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 236
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v9, 0x7f0d010a

    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->createEffectsArtisticRunnable()Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 237
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v9, 0x7f0d010b

    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->createEffectsExposureRunnable()Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 238
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v9, 0x7f0d010d

    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->createSaveRunnable()Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 239
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v9, 0x7f0d010c

    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->createApplyRunnable()Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 241
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    const v9, 0x7f0d0133

    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->createSaveRunnable()Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 242
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    const v9, 0x7f0d0132

    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->createApplyRunnable()Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 244
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 245
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 247
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    .line 248
    .local v5, viewConfiguration:Landroid/view/ViewConfiguration;
    if-nez v5, :cond_7

    .line 249
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->mhasPermanentMenuKey:Z

    .line 254
    :goto_5
    iget v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v8, v9, :cond_a

    .line 255
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    const v9, 0x7f0d0139

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/photoeditor/EffectsBar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 256
    iget-boolean v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->mhasPermanentMenuKey:Z

    if-eqz v8, :cond_9

    .line 257
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v9, 0x7f0d0102

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 261
    :goto_6
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v9, 0x7f0d0109

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 267
    :goto_7
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/photoeditor/FilterStack;->setAnimationEnable(Z)V

    .line 269
    new-instance v4, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-direct {v4, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 270
    .local v4, screenOffFilter:Landroid/content/IntentFilter;
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v4}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 181
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    .end local v3           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4           #screenOffFilter:Landroid/content/IntentFilter;
    .end local v5           #viewConfiguration:Landroid/view/ViewConfiguration;
    :cond_3
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->setVisibility(I)V

    .line 182
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->systemActionBar:Landroid/app/ActionBar;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setActionBarViewCollapsable(Z)V

    .line 183
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->systemActionBar:Landroid/app/ActionBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    goto/16 :goto_1

    .line 193
    .restart local v2       #metrics:Landroid/util/DisplayMetrics;
    .restart local v3       #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    const/4 v8, 0x0

    iput v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_2

    .line 198
    :cond_5
    const/4 v8, 0x0

    iput v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_3

    .line 219
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 251
    .restart local v0       #dm:Landroid/util/DisplayMetrics;
    .restart local v5       #viewConfiguration:Landroid/view/ViewConfiguration;
    :cond_7
    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->hasPhysicalMenuKey()Z

    move-result v8

    if-nez v8, :cond_8

    const/4 v8, 0x1

    :goto_8
    iput-boolean v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->mhasPermanentMenuKey:Z

    goto :goto_5

    :cond_8
    const/4 v8, 0x0

    goto :goto_8

    .line 259
    :cond_9
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v9, 0x7f0d0102

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 263
    :cond_a
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    const v9, 0x7f0d0139

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/photoeditor/EffectsBar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v9, 0x7f0d0102

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 265
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v9, 0x7f0d0109

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 321
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->mIsMarkedMode:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 340
    :goto_0
    return v0

    .line 324
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 325
    const v0, 0x7f0a00d1

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 327
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->shareMenuItem:Landroid/view/MenuItem;

    .line 328
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveMenuItem:Landroid/view/MenuItem;

    .line 329
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveMenuItem:Landroid/view/MenuItem;

    instance-of v0, v0, Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->shareMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 331
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->shareMenuItem:Landroid/view/MenuItem;

    const v3, 0x7f020163

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 332
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->shareMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 333
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->shareMenuItem:Landroid/view/MenuItem;

    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, v4}, Lcom/android/internal/view/menu/MenuItemImpl;->setShowGravity(I)Landroid/view/MenuItem;

    .line 335
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveMenuItem:Landroid/view/MenuItem;

    const/16 v3, 0x12

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 336
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveMenuItem:Landroid/view/MenuItem;

    const v3, 0x7f020158

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 337
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 338
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveMenuItem:Landroid/view/MenuItem;

    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuItemImpl;->setShowGravity(I)Landroid/view/MenuItem;

    :cond_1
    move v0, v2

    .line 340
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 897
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 898
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 899
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->sourceBtimap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 900
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->sourceBtimap:Landroid/graphics/Bitmap;

    .line 901
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->shareTempFile:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 902
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->shareTempFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 903
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 904
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 907
    .end local v0           #file:Ljava/io/File;
    :cond_0
    return-void
.end method

.method public onDoodleColorPickChange(IZ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1128
    iput p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColor:I

    .line 1129
    if-eqz p2, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColorPickLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1131
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleModeSelectLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1132
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->paintSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBarCustomView:Landroid/view/View;

    const v2, 0x7f0d013c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->screenWidth:I

    iget-boolean v3, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->isPortrait:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->show(Landroid/view/View;IZ)V

    .line 1133
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->paintSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->refreshPaintColor(I)V

    .line 1134
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->paintSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->locateColor(I)V

    .line 1135
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setDoodlePaintColor(I)V

    .line 1149
    :goto_0
    return-void

    .line 1137
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    if-nez v0, :cond_1

    .line 1138
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 1140
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 1141
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColorPreview:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1143
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 1144
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 1145
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 1146
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColorPickResult:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "R:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " G:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " B:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onDoodleColorPicker()V
    .locals 2

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColorPickLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1082
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleModeSelectLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1083
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColorPickResult:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1084
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    if-nez v0, :cond_0

    .line 1085
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 1087
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 1088
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColorPickResult:Landroid/widget/TextView;

    const-string v1, "R:0 G:0 B:0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1090
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->sourceBtimap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setImageSourceBmp(Landroid/graphics/Bitmap;)V

    .line 1091
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setColorPickMode()V

    .line 1092
    return-void
.end method

.method public onDoodleModified()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1112
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBarCustomView:Landroid/view/View;

    const v1, 0x7f0d014a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1113
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1114
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->shareMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1115
    iput-boolean v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->needSaveShareTempFile:Z

    .line 1116
    return-void
.end method

.method public onDoodlePaintAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 1075
    iput p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColorAlpha:I

    .line 1076
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setDoodlePaintAlpha(I)V

    .line 1077
    return-void
.end method

.method public onDoodlePaintColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 1063
    iput p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleColor:I

    .line 1064
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setDoodlePaintColor(I)V

    .line 1065
    return-void
.end method

.method public onDoodlePaintSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 1069
    int-to-float v0, p1

    iput v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodlePaintSize:F

    .line 1070
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setDoodlePaintSize(I)V

    .line 1071
    return-void
.end method

.method public onDoodleTextModified(Z)V
    .locals 1
    .parameter "hasText"

    .prologue
    .line 1120
    iput-boolean p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->hasDoodleText:Z

    .line 1121
    iput-boolean p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->needSaveShareTempFile:Z

    .line 1122
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1123
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->shareMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1124
    return-void
.end method

.method public onEraserPaintSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 1096
    int-to-float v0, p1

    iput v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->eraserPaintSize:F

    .line 1097
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setEraserPaintSize(I)V

    .line 1098
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3
    .parameter "featureId"
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 300
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->checkDoodleTextMode()V

    .line 303
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-nez v1, :cond_2

    .line 304
    iput-boolean v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->isShared:Z

    .line 305
    iget-boolean v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->needSaveShareTempFile:Z

    if-eqz v1, :cond_1

    .line 306
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveSharedPhoto()V

    .line 307
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->needSaveShareTempFile:Z

    .line 316
    :goto_0
    return v2

    .line 309
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->initShareIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 310
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 313
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveFilter()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 911
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 912
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/FilterStack;->onPause()V

    .line 916
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    if-eqz v0, :cond_0

    .line 917
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveDoodleParams()V

    .line 918
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->removeInputMethodChangeListener()V

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->mMzRecentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 922
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 926
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 927
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->isShared:Z

    .line 928
    invoke-static {p0}, Lcom/android/gallery3d/util/GalleryUtils;->initGalleryBrightness(Landroid/content/Context;)V

    .line 929
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->onResume()V

    .line 930
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/FilterStack;->onResume()V

    .line 931
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->openPhoto()V

    .line 933
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 934
    const-string v1, "com.meizu.recent.show"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 935
    const-string v1, "com.meizu.recent.dimiss"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 936
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->mMzRecentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 937
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 879
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 880
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/FilterStack;->saveStacks(Landroid/os/Bundle;)V

    .line 881
    const-string v0, "save_uri"

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 882
    return-void
.end method

.method public onShapeChange(II)V
    .locals 1
    .parameter "shapeID"
    .parameter "color"

    .prologue
    .line 1055
    iput p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->selectedShapeId:I

    .line 1056
    iput p2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->shapeColor:I

    .line 1057
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setShapeChange(II)V

    .line 1058
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->updataDoodleShapeButtonSelected(I)V

    .line 1059
    return-void
.end method

.method public onTextSettingChanged(IFI)V
    .locals 1
    .parameter "selectedId"
    .parameter "textSize"
    .parameter "color"

    .prologue
    .line 1047
    iput p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->selectedTextId:I

    .line 1048
    iput p2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleTextSize:F

    .line 1049
    iput p3, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleTextColor:I

    .line 1050
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setTextSettingChange(IFI)V

    .line 1051
    return-void
.end method
