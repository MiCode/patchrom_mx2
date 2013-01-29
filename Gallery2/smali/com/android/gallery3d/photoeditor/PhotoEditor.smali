.class public Lcom/android/gallery3d/photoeditor/PhotoEditor;
.super Landroid/app/Activity;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar$ItemSelectedListener;


# static fields
.field public static ACTION_BAR_HEIGHT:I

.field public static STATUS_BAR_HEIGHT:I


# instance fields
.field private effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

.field private filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mIsMarkedMode:Z

.field private photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

.field private photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

.field private saveMenuItem:Landroid/view/MenuItem;

.field private saveUri:Landroid/net/Uri;

.field private sourceUri:Landroid/net/Uri;

.field private systemActionBar:Landroid/app/ActionBar;

.field private toolbar:Lcom/android/gallery3d/photoeditor/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 579
    new-instance v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$19;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor$19;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->mBrightnessObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/EffectsBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/actions/DoodleView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->getDoodleView()Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/app/ActionBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->systemActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/PhotoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveFilter()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/gallery3d/photoeditor/PhotoEditor;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->createYesCancelDialog()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->sourceUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/photoeditor/PhotoEditor;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->enterDoodleEditMode(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/photoeditor/PhotoEditor;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->enterDoodleEraserMode(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/gallery3d/photoeditor/PhotoEditor;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->enterDoodleShapeMode(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/gallery3d/photoeditor/PhotoEditor;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->enterDoodleTextMode(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->enterDoodleUndoMode()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->enterDoodleRedoMode()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/FilterStack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->mIsMarkedMode:Z

    return v0
.end method

.method private createApplyRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 428
    new-instance v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$11;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$11;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    return-object v0
.end method

.method private createBackRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 461
    new-instance v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$13;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$13;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    return-object v0
.end method

.method private createEffectsArtisticRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 491
    new-instance v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$14;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$14;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    return-object v0
.end method

.method private createEffectsExposureRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 500
    new-instance v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$15;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$15;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    return-object v0
.end method

.method private createSaveRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 418
    new-instance v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$10;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$10;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    return-object v0
.end method

.method private createShareRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 440
    new-instance v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$12;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$12;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    return-object v0
.end method

.method private createUndoRedoRunnable(Z)Ljava/lang/Runnable;
    .locals 1
    .parameter "undo"

    .prologue
    .line 389
    new-instance v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$9;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/photoeditor/PhotoEditor$9;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;Z)V

    return-object v0
.end method

.method private createYesCancelDialog()V
    .locals 4

    .prologue
    .line 509
    new-instance v0, Lcom/android/gallery3d/photoeditor/YesCancelDialogBuilder;

    new-instance v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$16;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$16;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    new-instance v2, Lcom/android/gallery3d/photoeditor/PhotoEditor$17;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$17;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    const v3, 0x7f0a00c3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/gallery3d/photoeditor/YesCancelDialogBuilder;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/YesCancelDialogBuilder;->show()Landroid/app/AlertDialog;

    .line 532
    return-void
.end method

.method private enterDoodleEditMode(Landroid/view/View;)V
    .locals 2
    .parameter "customView"

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->getDoodleView()Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    move-result-object v0

    .line 325
    .local v0, doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;
    if-eqz v0, :cond_0

    .line 326
    const v1, 0x7f0d0124

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setEditMode(Landroid/view/View;)V

    .line 328
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->setDoodleIconBackground(I)V

    .line 329
    return-void
.end method

.method private enterDoodleEraserMode(Landroid/view/View;)V
    .locals 2
    .parameter "customView"

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->getDoodleView()Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    move-result-object v0

    .line 333
    .local v0, doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;
    if-eqz v0, :cond_0

    .line 334
    const v1, 0x7f0d0124

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setEraserMode(Landroid/view/View;)V

    .line 336
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->setDoodleIconBackground(I)V

    .line 337
    return-void
.end method

.method private enterDoodleRedoMode()V
    .locals 2

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->getDoodleView()Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    move-result-object v0

    .line 318
    .local v0, doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;
    if-eqz v0, :cond_0

    .line 319
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setRedoFlag(Z)V

    .line 321
    :cond_0
    return-void
.end method

.method private enterDoodleShapeMode(Landroid/view/View;)V
    .locals 3
    .parameter "customView"

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->getDoodleView()Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    move-result-object v0

    .line 341
    .local v0, doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;
    if-eqz v0, :cond_0

    .line 342
    const v1, 0x7f0d0124

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v1, 0x7f0d012a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setShapeMode(Landroid/view/View;Landroid/widget/ImageButton;)V

    .line 345
    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->setDoodleIconBackground(I)V

    .line 346
    return-void
.end method

.method private enterDoodleTextMode(Landroid/view/View;)V
    .locals 2
    .parameter "customView"

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->getDoodleView()Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    move-result-object v0

    .line 350
    .local v0, doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;
    if-eqz v0, :cond_0

    .line 351
    const v1, 0x7f0d0124

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setTextMode(Landroid/view/View;)V

    .line 353
    :cond_0
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->setDoodleIconBackground(I)V

    .line 354
    return-void
.end method

.method private enterDoodleUndoMode()V
    .locals 2

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->getDoodleView()Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    move-result-object v0

    .line 311
    .local v0, doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;
    if-eqz v0, :cond_0

    .line 312
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setUndoFlag(Z)V

    .line 314
    :cond_0
    return-void
.end method

.method private getDoodleView()Lcom/android/gallery3d/photoeditor/actions/DoodleView;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 561
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->toolbar:Lcom/android/gallery3d/photoeditor/Toolbar;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/Toolbar;->getChildCount()I

    move-result v3

    move v1, v2

    .line 563
    :goto_0
    if-ge v1, v3, :cond_1

    .line 564
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->toolbar:Lcom/android/gallery3d/photoeditor/Toolbar;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 565
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0d0112

    if-ne v4, v5, :cond_0

    .line 566
    const-class v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 567
    check-cast v0, Landroid/view/ViewGroup;

    .line 568
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const-class v1, Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 569
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    .line 576
    :goto_1
    return-object v0

    .line 563
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 576
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private openPhoto()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 260
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setIsOpenGallery(Z)V

    .line 261
    new-instance v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$8;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$8;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    .line 306
    .local v0, callback:Lcom/android/gallery3d/photoeditor/LoadScreennailTask$Callback;
    new-instance v1, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;

    invoke-direct {v1, p0, v0}, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;-><init>(Landroid/content/Context;Lcom/android/gallery3d/photoeditor/LoadScreennailTask$Callback;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->sourceUri:Landroid/net/Uri;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 307
    return-void
.end method

.method private saveFilter()V
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    new-instance v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$18;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$18;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->exit(Ljava/lang/Runnable;)Z

    .line 558
    return-void
.end method

.method private setDoodleIconBackground(I)V
    .locals 7
    .parameter "doodleMode"

    .prologue
    const v6, 0x7f0d012e

    const v5, 0x7f0d012b

    const v4, 0x7f0d0128

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 357
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->systemActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->systemActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 359
    .local v0, customView:Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 360
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 361
    const v1, 0x7f0d0131

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 362
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 363
    packed-switch p1, :pswitch_data_0

    .line 386
    .end local v0           #customView:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 365
    .restart local v0       #customView:Landroid/view/View;
    :pswitch_0
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 370
    :pswitch_1
    const v1, 0x7f0d0131

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 375
    :pswitch_2
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 380
    :pswitch_3
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 363
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setSystemActionBarOnClickListener()V
    .locals 3

    .prologue
    .line 215
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->systemActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 216
    .local v0, customView:Landroid/view/View;
    const v1, 0x7f0d012d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/photoeditor/PhotoEditor$2;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$2;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    const v1, 0x7f0d0130

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/photoeditor/PhotoEditor$3;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$3;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    const v1, 0x7f0d012a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/photoeditor/PhotoEditor$4;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$4;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    const v1, 0x7f0d0127

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/photoeditor/PhotoEditor$5;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$5;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    const v1, 0x7f0d0132

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/photoeditor/PhotoEditor$6;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$6;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    const v1, 0x7f0d0133

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/photoeditor/PhotoEditor$7;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$7;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->clickBack()V

    .line 596
    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "newConfig"

    .prologue
    const v7, 0x7f0d0122

    const v6, 0x7f0d0105

    const v5, 0x7f0d00fe

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 678
    iget-boolean v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->mIsMarkedMode:Z

    if-nez v1, :cond_0

    .line 679
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-le v1, v2, :cond_1

    .line 680
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/EffectsBar;->updateEffectLayout(Z)V

    .line 681
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-virtual {v1, v7}, Lcom/android/gallery3d/photoeditor/EffectsBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 682
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    invoke-virtual {v1, v5}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 683
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    invoke-virtual {v1, v6}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 690
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getActiveEffectAction()Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    move-result-object v0

    .line 691
    .local v0, action:Lcom/android/gallery3d/photoeditor/actions/EffectAction;
    if-eqz v0, :cond_2

    .line 692
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->doBegin(Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V

    .line 697
    .end local v0           #action:Lcom/android/gallery3d/photoeditor/actions/EffectAction;
    :cond_0
    :goto_1
    return-void

    .line 685
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/photoeditor/EffectsBar;->updateEffectLayout(Z)V

    .line 686
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-virtual {v1, v7}, Lcom/android/gallery3d/photoeditor/EffectsBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 687
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    invoke-virtual {v1, v5}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 688
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    invoke-virtual {v1, v6}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 694
    .restart local v0       #action:Lcom/android/gallery3d/photoeditor/actions/EffectAction;
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->doEffectMenuSelected()V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 660
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 661
    iget-boolean v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->mIsMarkedMode:Z

    if-eqz v1, :cond_1

    .line 662
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->systemActionBar:Landroid/app/ActionBar;

    const v2, 0x7f04005f

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 663
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->getDoodleView()Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    move-result-object v0

    .line 664
    .local v0, doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;
    if-eqz v0, :cond_0

    .line 665
    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getDoodleMode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->setDoodleIconBackground(I)V

    .line 666
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->systemActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d012a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->updataShapeButton(Landroid/widget/ImageButton;)V

    .line 667
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->systemActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setActionBarCustomView(Landroid/view/View;)V

    .line 669
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->setSystemActionBarOnClickListener()V

    .line 674
    .end local v0           #doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;
    :goto_0
    return-void

    .line 671
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->systemActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setActionBarViewCollapsable(Z)V

    .line 672
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->systemActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const-string v6, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->finish()V

    .line 183
    :goto_0
    return-void

    .line 78
    :cond_0
    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->requestWindowFeature(I)Z

    .line 79
    const/16 v6, 0x9

    invoke-virtual {p0, v6}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->requestWindowFeature(I)Z

    .line 80
    const v6, 0x7f04005b

    invoke-virtual {p0, v6}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->setContentView(I)V

    .line 82
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 83
    .local v4, win:Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 84
    .local v5, winParams:Landroid/view/WindowManager$LayoutParams;
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v6, v6, 0x80

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 85
    invoke-virtual {v4, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 88
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "marked_mode"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->mIsMarkedMode:Z

    .line 90
    const-string v6, "android.intent.action.EDIT"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 91
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->sourceUri:Landroid/net/Uri;

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x105000c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sput v6, Lcom/android/gallery3d/photoeditor/PhotoEditor;->STATUS_BAR_HEIGHT:I

    .line 95
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1050090

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sput v6, Lcom/android/gallery3d/photoeditor/PhotoEditor;->ACTION_BAR_HEIGHT:I

    .line 97
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    iput-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->systemActionBar:Landroid/app/ActionBar;

    .line 98
    const v6, 0x7f0d011f

    invoke-virtual {p0, v6}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/photoeditor/Toolbar;

    iput-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->toolbar:Lcom/android/gallery3d/photoeditor/Toolbar;

    .line 99
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->toolbar:Lcom/android/gallery3d/photoeditor/Toolbar;

    const/16 v7, 0x500

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/photoeditor/Toolbar;->setSystemUiVisibility(I)V

    .line 100
    const v6, 0x7f0d0123

    invoke-virtual {p0, v6}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    iput-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    .line 101
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    iget-boolean v7, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->mIsMarkedMode:Z

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->setIsMarkedMode(Z)V

    .line 102
    iget-boolean v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->mIsMarkedMode:Z

    if-eqz v6, :cond_3

    .line 103
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->setVisibility(I)V

    .line 104
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->systemActionBar:Landroid/app/ActionBar;

    const v7, 0x7f04005f

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 105
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->systemActionBar:Landroid/app/ActionBar;

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 106
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->setSystemActionBarOnClickListener()V

    .line 112
    :goto_1
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    invoke-virtual {v6, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->setItemSelectedListener(Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar$ItemSelectedListener;)V

    .line 113
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    invoke-virtual {v7}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->getPaddingLeft()I

    move-result v7

    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    invoke-virtual {v8}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x105000c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    invoke-virtual {v9}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->getPaddingRight()I

    move-result v9

    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    invoke-virtual {v10}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->getPaddingBottom()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->setPadding(IIII)V

    .line 114
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v7, 0x7f0d0109

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 115
    const v6, 0x7f0d0120

    invoke-virtual {p0, v6}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/photoeditor/PhotoView;

    iput-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    .line 117
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    invoke-virtual {v6}, Lcom/android/gallery3d/photoeditor/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 119
    .local v2, metrics:Landroid/util/DisplayMetrics;
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    invoke-virtual {v6}, Lcom/android/gallery3d/photoeditor/PhotoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 120
    .local v3, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v6, v7, :cond_4

    .line 121
    sget v6, Lcom/android/gallery3d/photoeditor/PhotoEditor;->ACTION_BAR_HEIGHT:I

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 125
    :goto_2
    iget-boolean v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->mIsMarkedMode:Z

    if-eqz v6, :cond_5

    .line 126
    sget v6, Lcom/android/gallery3d/photoeditor/PhotoEditor;->STATUS_BAR_HEIGHT:I

    sget v7, Lcom/android/gallery3d/photoeditor/PhotoEditor;->ACTION_BAR_HEIGHT:I

    add-int/2addr v6, v7

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 130
    :goto_3
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    iget-boolean v7, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->mIsMarkedMode:Z

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/photoeditor/PhotoView;->setIsMarkedMode(Z)V

    .line 131
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->toolbar:Lcom/android/gallery3d/photoeditor/Toolbar;

    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/photoeditor/Toolbar;->setPhotoView(Lcom/android/gallery3d/photoeditor/PhotoView;)V

    .line 132
    new-instance v6, Lcom/android/gallery3d/photoeditor/FilterStack;

    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    new-instance v8, Lcom/android/gallery3d/photoeditor/PhotoEditor$1;

    invoke-direct {v8, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$1;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    invoke-direct {v6, v7, v8, p1}, Lcom/android/gallery3d/photoeditor/FilterStack;-><init>(Lcom/android/gallery3d/photoeditor/PhotoView;Lcom/android/gallery3d/photoeditor/FilterStack$StackListener;Landroid/os/Bundle;)V

    iput-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    .line 143
    if-eqz p1, :cond_2

    .line 144
    const-string v6, "save_uri"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    iput-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;

    .line 145
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    if-eqz v6, :cond_2

    .line 146
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;

    if-nez v6, :cond_6

    const/4 v6, 0x1

    :goto_4
    invoke-virtual {v7, v6}, Lcom/android/gallery3d/photoeditor/EffectsBar;->updateSave(Z)V

    .line 151
    :cond_2
    const v6, 0x7f0d0121

    invoke-virtual {p0, v6}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/photoeditor/EffectsBar;

    iput-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    .line 152
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    iget-boolean v9, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->mIsMarkedMode:Z

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/gallery3d/photoeditor/EffectsBar;->initialize(Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;Z)V

    .line 153
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setEnabled(Z)V

    .line 154
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/photoeditor/EffectsBar;->updateSave(Z)V

    .line 156
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v7, 0x7f0d0100

    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->createUndoRedoRunnable(Z)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 157
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v7, 0x7f0d0101

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->createUndoRedoRunnable(Z)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 158
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v7, 0x7f0d0103

    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->createSaveRunnable()Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 159
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v7, 0x7f0d0104

    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->createShareRunnable()Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 160
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v7, 0x7f0d00fe

    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->createBackRunnable()Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 162
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v7, 0x7f0d0106

    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->createEffectsArtisticRunnable()Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 163
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v7, 0x7f0d0107

    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->createEffectsExposureRunnable()Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 164
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v7, 0x7f0d0109

    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->createSaveRunnable()Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 165
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v7, 0x7f0d0108

    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->createApplyRunnable()Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 167
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    const v7, 0x7f0d011e

    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->createSaveRunnable()Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 168
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    const v7, 0x7f0d011d

    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->createApplyRunnable()Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 170
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 171
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 173
    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v6, v7, :cond_7

    .line 174
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    const v7, 0x7f0d0122

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/photoeditor/EffectsBar;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 175
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v7, 0x7f0d00fe

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v7, 0x7f0d0105

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 182
    :goto_5
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/photoeditor/FilterStack;->setAnimationEnable(Z)V

    goto/16 :goto_0

    .line 108
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    .end local v3           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->setVisibility(I)V

    .line 109
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->systemActionBar:Landroid/app/ActionBar;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setActionBarViewCollapsable(Z)V

    .line 110
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->systemActionBar:Landroid/app/ActionBar;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    goto/16 :goto_1

    .line 123
    .restart local v2       #metrics:Landroid/util/DisplayMetrics;
    .restart local v3       #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    const/4 v6, 0x0

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_2

    .line 128
    :cond_5
    sget v6, Lcom/android/gallery3d/photoeditor/PhotoEditor;->STATUS_BAR_HEIGHT:I

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_3

    .line 146
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 178
    .restart local v0       #dm:Landroid/util/DisplayMetrics;
    :cond_7
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    const v7, 0x7f0d0122

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/photoeditor/EffectsBar;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v7, 0x7f0d00fe

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v7, 0x7f0d0105

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v0, 0x0

    .line 200
    iget-boolean v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->mIsMarkedMode:Z

    if-nez v1, :cond_0

    .line 211
    :goto_0
    return v0

    .line 203
    :cond_0
    const v1, 0x7f0a00c6

    invoke-interface {p1, v0, v0, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 204
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveMenuItem:Landroid/view/MenuItem;

    .line 205
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveMenuItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveMenuItem:Landroid/view/MenuItem;

    instance-of v1, v1, Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveMenuItem:Landroid/view/MenuItem;

    const/16 v2, 0x12

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 207
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveMenuItem:Landroid/view/MenuItem;

    const v2, 0x7f0200ea

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 208
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 209
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveMenuItem:Landroid/view/MenuItem;

    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuItemImpl;->setShowGravity(I)Landroid/view/MenuItem;

    .line 211
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 188
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-nez v1, :cond_1

    .line 189
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->getDoodleView()Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    move-result-object v0

    .line 190
    .local v0, doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;
    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->checkEraserMode()V

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveFilter()V

    .line 195
    .end local v0           #doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 600
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 601
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/FilterStack;->onPause()V

    .line 605
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->getDoodleView()Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    move-result-object v0

    .line 606
    .local v0, doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;
    if-eqz v0, :cond_0

    .line 607
    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dismissDialog()V

    .line 609
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 610
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 614
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 615
    invoke-static {p0}, Lcom/android/gallery3d/util/GalleryUtils;->initGalleryBrightness(Landroid/content/Context;)V

    .line 616
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 618
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->onResume()V

    .line 619
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/FilterStack;->onResume()V

    .line 620
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->openPhoto()V

    .line 621
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 588
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 589
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/FilterStack;->saveStacks(Landroid/os/Bundle;)V

    .line 590
    const-string v0, "save_uri"

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 591
    return-void
.end method
