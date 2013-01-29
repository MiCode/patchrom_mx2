.class public abstract Lcom/android/gallery3d/app/ActivityState;
.super Ljava/lang/Object;
.source "ActivityState.java"

# interfaces
.implements Lcom/android/gallery3d/ui/HudView$HudViewClickedListenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/ActivityState$ShareItem;,
        Lcom/android/gallery3d/app/ActivityState$ShareAdapter;,
        Lcom/android/gallery3d/app/ActivityState$ResultEntry;
    }
.end annotation


# instance fields
.field protected mActivity:Lcom/android/gallery3d/app/GalleryActivity;

.field protected mData:Landroid/os/Bundle;

.field private mDestroyed:Z

.field protected mFlags:I

.field mIsFinishing:Z

.field private mPlugged:Z

.field mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mReceivedResults:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

.field protected mResult:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

.field protected mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mShareAdapter:Lcom/android/gallery3d/app/ActivityState$ShareAdapter;

.field protected mSharedSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field protected mState:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-boolean v1, p0, Lcom/android/gallery3d/app/ActivityState;->mDestroyed:Z

    .line 100
    iput-boolean v1, p0, Lcom/android/gallery3d/app/ActivityState;->mPlugged:Z

    .line 101
    iput-boolean v1, p0, Lcom/android/gallery3d/app/ActivityState;->mIsFinishing:Z

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mShareAdapter:Lcom/android/gallery3d/app/ActivityState$ShareAdapter;

    .line 144
    new-instance v0, Lcom/android/gallery3d/app/ActivityState$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/ActivityState$1;-><init>(Lcom/android/gallery3d/app/ActivityState;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 105
    iput v1, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/ActivityState;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ActivityState;->mPlugged:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/gallery3d/app/ActivityState;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/gallery3d/app/ActivityState;->mPlugged:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/ActivityState;Ljava/util/ArrayList;Landroid/content/Intent;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/ActivityState;->createShareMoreDialog(Ljava/util/ArrayList;Landroid/content/Intent;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/ActivityState;)Lcom/android/gallery3d/app/ActivityState$ShareAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mShareAdapter:Lcom/android/gallery3d/app/ActivityState$ShareAdapter;

    return-object v0
.end method

.method private createShareMoreDialog(Ljava/util/ArrayList;Landroid/content/Intent;)Landroid/app/Dialog;
    .locals 18
    .parameter
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            ")",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .prologue
    .line 514
    .local p1, packages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    const/4 v11, 0x0

    .line 515
    .local v11, dlg:Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v10

    .line 516
    .local v10, context:Landroid/content/Context;
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 517
    .local v9, builder:Landroid/app/AlertDialog$Builder;
    const-string v2, "\u5176\u4ed6\u5206\u4eab"

    invoke-virtual {v9, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 519
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 520
    .local v14, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/app/ActivityState$ShareItem;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 521
    .local v15, num:I
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 523
    .local v16, pm:Landroid/content/pm/PackageManager;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v15, :cond_0

    .line 524
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 525
    .local v13, info:Landroid/content/pm/ResolveInfo;
    new-instance v2, Lcom/android/gallery3d/app/ActivityState$ShareItem;

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    int-to-long v6, v12

    new-instance v8, Landroid/content/ComponentName;

    iget-object v3, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v8, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/gallery3d/app/ActivityState$ShareItem;-><init>(Lcom/android/gallery3d/app/ActivityState;Landroid/graphics/drawable/Drawable;Ljava/lang/String;JLandroid/content/ComponentName;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 528
    .end local v13           #info:Landroid/content/pm/ResolveInfo;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mShareAdapter:Lcom/android/gallery3d/app/ActivityState$ShareAdapter;

    if-nez v2, :cond_1

    .line 529
    new-instance v2, Lcom/android/gallery3d/app/ActivityState$ShareAdapter;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v10, v14}, Lcom/android/gallery3d/app/ActivityState$ShareAdapter;-><init>(Lcom/android/gallery3d/app/ActivityState;Landroid/content/Context;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mShareAdapter:Lcom/android/gallery3d/app/ActivityState$ShareAdapter;

    .line 533
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mShareAdapter:Lcom/android/gallery3d/app/ActivityState$ShareAdapter;

    new-instance v3, Lcom/android/gallery3d/app/ActivityState$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v1, v10}, Lcom/android/gallery3d/app/ActivityState$4;-><init>(Lcom/android/gallery3d/app/ActivityState;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-virtual {v9, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 553
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    .line 554
    return-object v11

    .line 531
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mShareAdapter:Lcom/android/gallery3d/app/ActivityState$ShareAdapter;

    invoke-virtual {v2, v14}, Lcom/android/gallery3d/app/ActivityState$ShareAdapter;->setData(Ljava/util/ArrayList;)V

    goto :goto_1
.end method


# virtual methods
.method protected deleteSelectedObject(ILjava/lang/Object;)V
    .locals 13
    .parameter "id"
    .parameter "arg"

    .prologue
    .line 372
    iget-object v10, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v10}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 373
    .local v0, context:Landroid/content/Context;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 376
    .local v2, drag:Z
    iget-object v10, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v7

    .line 377
    .local v7, selectedSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gtz v10, :cond_0

    .line 436
    .end local v0           #context:Landroid/content/Context;
    :goto_0
    return-void

    .line 380
    .restart local v0       #context:Landroid/content/Context;
    :cond_0
    const/4 v9, 0x0

    .line 381
    .local v9, totalItemNum:I
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/data/Path;

    .line 382
    .local v6, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v6}, Lcom/android/gallery3d/data/Path;->getObject()Lcom/android/gallery3d/data/MediaObject;

    move-result-object v5

    .line 383
    .local v5, object:Lcom/android/gallery3d/data/MediaObject;
    instance-of v10, v5, Lcom/android/gallery3d/data/MediaSet;

    if-eqz v10, :cond_1

    move-object v8, v5

    .line 384
    check-cast v8, Lcom/android/gallery3d/data/MediaSet;

    .line 385
    .local v8, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v10

    add-int/2addr v9, v10

    .line 386
    goto :goto_1

    .line 387
    .end local v8           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 391
    .end local v5           #object:Lcom/android/gallery3d/data/MediaObject;
    .end local v6           #path:Lcom/android/gallery3d/data/Path;
    :cond_2
    if-nez v2, :cond_a

    .line 392
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 393
    .local v1, dlg:Landroid/app/AlertDialog$Builder;
    const/16 v10, 0x606

    if-ne p1, v10, :cond_6

    .line 394
    const/4 v10, 0x1

    if-le v9, v10, :cond_4

    .line 395
    const v10, 0x7f0a01d0

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 421
    :cond_3
    :goto_2
    const v10, 0x104000a

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/android/gallery3d/app/ActivityState$3;

    invoke-direct {v11, p0, v0}, Lcom/android/gallery3d/app/ActivityState$3;-><init>(Lcom/android/gallery3d/app/ActivityState;Landroid/content/Context;)V

    invoke-virtual {v1, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 430
    const v10, 0x7f0a0148

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 431
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 397
    :cond_4
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/data/Path;

    .line 398
    .restart local v6       #path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v6}, Lcom/android/gallery3d/data/Path;->getObject()Lcom/android/gallery3d/data/MediaObject;

    move-result-object v5

    .line 399
    .restart local v5       #object:Lcom/android/gallery3d/data/MediaObject;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_5

    .line 400
    const v10, 0x7f0a01d2

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 402
    :cond_5
    const v10, 0x7f0a01cf

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 407
    .end local v5           #object:Lcom/android/gallery3d/data/MediaObject;
    .end local v6           #path:Lcom/android/gallery3d/data/Path;
    :cond_6
    iget-object v10, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v10}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    .line 408
    const/4 v10, 0x1

    if-le v9, v10, :cond_7

    .line 409
    const v10, 0x7f0a01d1

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 410
    :cond_7
    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 411
    iget-object v10, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v10}, Lcom/android/gallery3d/app/GalleryActivity;->getIntentType()Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    move-result-object v10

    iget v10, v10, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    .line 412
    const v10, 0x7f0a01d2

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 414
    :cond_8
    const v10, 0x7f0a01cf

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_2

    .line 417
    :cond_9
    iget-object v10, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v10}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_3

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    .line 418
    const v10, 0x7f0a01d0

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_2

    .line 433
    .end local v1           #dlg:Landroid/app/AlertDialog$Builder;
    :cond_a
    new-instance v4, Lcom/android/gallery3d/ui/MenuExecutor;

    check-cast v0, Lcom/android/gallery3d/app/GalleryActivity;

    .end local v0           #context:Landroid/content/Context;
    iget-object v10, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v4, v0, v10}, Lcom/android/gallery3d/ui/MenuExecutor;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    .line 434
    .local v4, menuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;
    const v10, 0x7f0d0192

    const v11, 0x7f0a0147

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v11, v12}, Lcom/android/gallery3d/ui/MenuExecutor;->startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    goto/16 :goto_0
.end method

.method public getData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    return-object v0
.end method

.method initialize(Lcom/android/gallery3d/app/GalleryActivity;Landroid/os/Bundle;)V
    .locals 0
    .parameter "activity"
    .parameter "data"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    .line 114
    iput-object p2, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    .line 115
    return-void
.end method

.method isDestroyed()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ActivityState;->mDestroyed:Z

    return v0
.end method

.method public isFinishing()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ActivityState;->mIsFinishing:Z

    return v0
.end method

.method protected onBackPressed()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    .line 123
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 132
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2
    .parameter "data"
    .parameter "storedState"

    .prologue
    .line 141
    const-string v0, "key-state"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    .line 142
    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 226
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/ActivityState;->mDestroyed:Z

    .line 235
    return-void
.end method

.method public onHudViewClicked(ILjava/lang/Object;)Z
    .locals 1
    .parameter "id"
    .parameter "arg"

    .prologue
    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method protected onHudViewSelect()V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->isAllSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 444
    :goto_0
    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->selectAll()V

    goto :goto_0
.end method

.method protected onHudViewShare(I)V
    .locals 23
    .parameter "id"

    .prologue
    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    .line 266
    .local v6, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v18

    .line 267
    .local v18, selectedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-static/range {v18 .. v18}, Lcom/android/gallery3d/util/GalleryUtils;->getShareIntent(Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v5

    .line 268
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 270
    .local v4, action:Ljava/lang/String;
    const/16 v20, 0x0

    .line 271
    .local v20, supportOthers:Z
    const/16 v19, 0x0

    .line 272
    .local v19, supportMms:Z
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 273
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/Path;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/Path;->getObject()Lcom/android/gallery3d/data/MediaObject;

    move-result-object v14

    .line 274
    .local v14, obj:Lcom/android/gallery3d/data/MediaObject;
    if-eqz v14, :cond_2

    instance-of v2, v14, Lcom/android/gallery3d/data/LocalVideo;

    if-nez v2, :cond_2

    const/16 v19, 0x1

    .line 279
    .end local v14           #obj:Lcom/android/gallery3d/data/MediaObject;
    :cond_0
    :goto_0
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v15, packageFilter:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "com.android.email"

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v7, otherPackage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 285
    .local v16, packageManager:Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 286
    .local v8, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 287
    .local v11, info:Landroid/content/pm/ResolveInfo;
    iget-object v2, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 288
    .local v12, label:Ljava/lang/String;
    const-string v2, "Gallery2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "supported activity "

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v21, " package name "

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v21, " activity name "

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 290
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 274
    .end local v7           #otherPackage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .end local v8           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #info:Landroid/content/pm/ResolveInfo;
    .end local v12           #label:Ljava/lang/String;
    .end local v15           #packageFilter:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16           #packageManager:Landroid/content/pm/PackageManager;
    .restart local v14       #obj:Lcom/android/gallery3d/data/MediaObject;
    :cond_2
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 293
    .end local v14           #obj:Lcom/android/gallery3d/data/MediaObject;
    .restart local v7       #otherPackage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .restart local v8       #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v15       #packageFilter:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16       #packageManager:Landroid/content/pm/PackageManager;
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    const/16 v20, 0x1

    .line 300
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v2, Landroid/app/Activity;

    const/16 v3, 0x609

    move/from16 v0, p1

    if-ne v0, v3, :cond_8

    const v3, 0x7f0d005c

    :goto_3
    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 301
    .local v9, anchor:Landroid/view/View;
    new-instance v17, Landroid/widget/PopupMenu;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v9}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 302
    .local v17, pm:Landroid/widget/PopupMenu;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v13

    .line 304
    .local v13, menu:Landroid/view/Menu;
    const/4 v2, 0x0

    const/16 v3, 0x205

    const/16 v21, 0x0

    const-string v22, "Bluetooth"

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v2, v3, v0, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 305
    if-eqz v19, :cond_4

    .line 306
    const/4 v2, 0x0

    const/16 v3, 0x206

    const/16 v21, 0x0

    const-string v22, "Mms"

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v2, v3, v0, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 307
    :cond_4
    const/16 v2, 0x614

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    .line 308
    const/4 v2, 0x0

    const/16 v3, 0x208

    const/16 v21, 0x0

    const-string v22, "Email"

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v2, v3, v0, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 310
    :cond_5
    if-eqz v20, :cond_6

    .line 311
    const/4 v2, 0x0

    const/16 v3, 0x207

    const/16 v21, 0x0

    const-string v22, "More"

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v2, v3, v0, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 312
    :cond_6
    new-instance v2, Lcom/android/gallery3d/app/ActivityState$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/gallery3d/app/ActivityState$2;-><init>(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;Ljava/util/ArrayList;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 343
    invoke-virtual/range {v17 .. v17}, Landroid/widget/PopupMenu;->show()V

    .line 344
    return-void

    .line 293
    .end local v9           #anchor:Landroid/view/View;
    .end local v13           #menu:Landroid/view/Menu;
    .end local v17           #pm:Landroid/widget/PopupMenu;
    :cond_7
    const/16 v20, 0x0

    goto :goto_2

    .line 300
    :cond_8
    const v3, 0x7f0d005a

    goto :goto_3
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public onPasswordPadReturn(I)V
    .locals 2
    .parameter "result"

    .prologue
    .line 586
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 587
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/gallery3d/data/MediaObject;->sAppGlobalLocked:Z

    .line 588
    invoke-static {}, Lcom/android/gallery3d/data/MediaObject;->nextVersionNumber()J

    move-result-wide v0

    sput-wide v0, Lcom/android/gallery3d/data/MediaObject;->sLockStateVersion:J

    .line 589
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/DataManager;->fakeChange()V

    .line 591
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 172
    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 175
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 221
    return-void
.end method

.method protected onSaveState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 135
    return-void
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 138
    return-void
.end method

.method public popupPasswordPad(I)V
    .locals 3
    .parameter "requestCode"

    .prologue
    .line 577
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 578
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ConfirmPasswordMeizu"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 580
    const-string v1, "confirmSystemPassword"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 581
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 582
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->setIgnoreLockStateOnStart()V

    .line 583
    return-void
.end method

.method public popupPasswordPadIfNeeded(I)Z
    .locals 6
    .parameter "requestCode"

    .prologue
    const/4 v4, 0x0

    .line 563
    invoke-static {}, Lcom/android/gallery3d/data/MediaObject;->isLockEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 564
    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 565
    .local v3, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/Path;

    .line 566
    .local v2, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v2}, Lcom/android/gallery3d/data/Path;->getObject()Lcom/android/gallery3d/data/MediaObject;

    move-result-object v1

    .line 567
    .local v1, object:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getLockState()I

    move-result v5

    if-lez v5, :cond_0

    .line 568
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/ActivityState;->popupPasswordPad(I)V

    .line 569
    const/4 v4, 0x1

    .line 573
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #object:Lcom/android/gallery3d/data/MediaObject;
    .end local v2           #path:Lcom/android/gallery3d/data/Path;
    .end local v3           #paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    :cond_1
    return v4
.end method

.method resume()V
    .locals 7

    .prologue
    .line 180
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    .line 181
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 196
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->setScreenOnFlags()V

    .line 201
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mReceivedResults:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    .line 202
    .local v2, entry:Lcom/android/gallery3d/app/ActivityState$ResultEntry;
    if-eqz v2, :cond_0

    .line 203
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mReceivedResults:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    .line 204
    iget v4, v2, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->requestCode:I

    iget v5, v2, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->resultCode:I

    iget-object v6, v2, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/gallery3d/app/ActivityState;->onStateResult(IILandroid/content/Intent;)V

    .line 207
    :cond_0
    iget v4, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    .line 209
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 210
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v4, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 213
    .end local v3           #filter:Landroid/content/IntentFilter;
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->onResume()V

    .line 216
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/app/TransitionStore;->clear()V

    .line 217
    return-void
.end method

.method protected setContentPane(Lcom/android/gallery3d/ui/GLView;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/GLRoot;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 110
    return-void
.end method

.method setScreenOnFlags()V
    .locals 3

    .prologue
    .line 160
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 161
    .local v1, win:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 162
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    iget v2, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/gallery3d/app/ActivityState;->mPlugged:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 164
    :cond_0
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 168
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 169
    return-void

    .line 166
    :cond_1
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method public setSharedSelectionManager(Lcom/android/gallery3d/ui/SelectionManager;)V
    .locals 0
    .parameter "selectionManager"

    .prologue
    .line 559
    iput-object p1, p0, Lcom/android/gallery3d/app/ActivityState;->mSharedSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 560
    return-void
.end method

.method protected setStateResult(ILandroid/content/Intent;)V
    .locals 1
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mResult:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mResult:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    iput p1, v0, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->resultCode:I

    .line 128
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mResult:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    iput-object p2, v0, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;

    goto :goto_0
.end method

.method protected sharedByEmail(Landroid/content/Context;)Z
    .locals 14
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 348
    const/4 v7, 0x0

    .line 349
    .local v7, totalSize:I
    iget-object v10, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v10, v8}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v6

    .line 350
    .local v6, selectedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/Path;

    .line 351
    .local v5, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v5}, Lcom/android/gallery3d/data/Path;->getObject()Lcom/android/gallery3d/data/MediaObject;

    move-result-object v4

    .local v4, object:Lcom/android/gallery3d/data/MediaObject;
    move-object v3, v4

    .line 352
    check-cast v3, Lcom/android/gallery3d/data/MediaItem;

    .line 353
    .local v3, item:Lcom/android/gallery3d/data/MediaItem;
    int-to-long v10, v7

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getSize()J

    move-result-wide v12

    add-long/2addr v10, v12

    long-to-int v7, v10

    .line 354
    const/high16 v10, 0x320

    if-le v7, v10, :cond_0

    .line 355
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 356
    .local v0, dlg:Landroid/app/AlertDialog$Builder;
    const v10, 0x1080041

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 357
    const v10, 0x7f0a01c6

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-array v11, v8, [Ljava/lang/Object;

    const-string v12, "50M"

    aput-object v12, v11, v9

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 358
    const v9, 0x104000a

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 359
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 368
    .end local v0           #dlg:Landroid/app/AlertDialog$Builder;
    .end local v3           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v4           #object:Lcom/android/gallery3d/data/MediaObject;
    .end local v5           #path:Lcom/android/gallery3d/data/Path;
    :goto_0
    return v8

    .line 363
    :cond_1
    invoke-static {v6}, Lcom/android/gallery3d/util/GalleryUtils;->getShareIntent(Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v2

    .line 364
    .local v2, intent:Landroid/content/Intent;
    const-string v8, "com.android.email"

    const-string v10, "com.android.email.activity.MessageCompose"

    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    const/high16 v8, 0x400

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 366
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v8, v9

    .line 368
    goto :goto_0
.end method
