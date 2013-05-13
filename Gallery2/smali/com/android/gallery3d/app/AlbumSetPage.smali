.class public Lcom/android/gallery3d/app/AlbumSetPage;
.super Lcom/android/gallery3d/app/ActivityState;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/EyePosition$EyePositionListener;
.implements Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;
.implements Lcom/android/gallery3d/data/MediaSet$SyncListener;
.implements Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;,
        Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;,
        Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;
    }
.end annotation


# instance fields
.field private mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

.field private mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

.field private mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

.field private mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

.field private mButtonNewFolderOk:Landroid/widget/Button;

.field private mCustomAddSetView:Lcom/meizu/widget/GlowImageButton;

.field mDelayUpdate:Ljava/lang/Runnable;

.field private mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

.field private mDetailsSource:Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;

.field private mDragBuilder:Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;

.field private mDstNewDirPath:Ljava/lang/String;

.field private mEyePosition:Lcom/android/gallery3d/app/EyePosition;

.field private mGetAlbum:Z

.field private mGetContent:Z

.field private mHandler:Landroid/os/Handler;

.field private mInitialSynced:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsActive:Z

.field private mIsVideo:Z

.field private mLoadingBits:I

.field private mLockIcon:Landroid/graphics/Bitmap;

.field private mMediaSet:Lcom/android/gallery3d/data/MediaSet;

.field private mMediaType:I

.field private mNameEditor:Landroid/widget/EditText;

.field private mNoItemView:Lcom/android/gallery3d/ui/NoItemView;

.field private mNormal:Landroid/graphics/NinePatch;

.field private mPickedAlbumIndex:I

.field private mRemoveFileDlg:Landroid/app/AlertDialog;

.field private final mRootPane:Lcom/android/gallery3d/ui/GLView;

.field private mSelectedMenuItem:Landroid/view/MenuItem;

.field private mSelectionButton:Lcom/meizu/widget/SelectionButton;

.field private mSetWallpaper:Z

.field private mShadow:Landroid/graphics/NinePatch;

.field private mShowDetails:Z

.field private mSlotView:Lcom/android/gallery3d/ui/SlotView;

.field private mSrcRootDirPath:Ljava/lang/String;

.field private mSyncTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;

.field private mUseNoItemView:Z

.field private mWarning:Landroid/graphics/NinePatch;

.field private mX:F

.field private mY:F

.field private mZ:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Lcom/android/gallery3d/app/ActivityState;-><init>()V

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPickedAlbumIndex:I

    .line 137
    iput-boolean v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    .line 179
    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 181
    iput v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mInitialSynced:Z

    .line 184
    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mButtonNewFolderOk:Landroid/widget/Button;

    .line 185
    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNameEditor:Landroid/widget/EditText;

    .line 187
    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNormal:Landroid/graphics/NinePatch;

    .line 188
    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mWarning:Landroid/graphics/NinePatch;

    .line 189
    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShadow:Landroid/graphics/NinePatch;

    .line 190
    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLockIcon:Landroid/graphics/Bitmap;

    .line 191
    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDragBuilder:Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;

    .line 195
    new-instance v0, Lcom/android/gallery3d/app/AlbumSetPage$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumSetPage$1;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    .line 674
    new-instance v0, Lcom/android/gallery3d/app/AlbumSetPage$5;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumSetPage$5;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1524
    new-instance v0, Lcom/android/gallery3d/app/AlbumSetPage$15;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumSetPage$15;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDelayUpdate:Ljava/lang/Runnable;

    .line 1530
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/EyePosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/AlbumSetPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsVideo:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->onDragEnd()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/data/Path;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->onDragStarted(Lcom/android/gallery3d/data/Path;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->addAlbumSet()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/AlbumSetPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->pickAlbum(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/AlbumSetPage;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/AlbumSetPage;->setNoItemViewState(ZZ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/app/AlbumSetPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->onDown(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/app/AlbumSetPage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->onUp(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/meizu/widget/SelectionButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/meizu/widget/SelectionButton;)Lcom/meizu/widget/SelectionButton;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/AlbumSetPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/ActionModeHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/app/AlbumSetPage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDragBuilder:Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/gallery3d/app/AlbumSetPage;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRemoveFileDlg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/gallery3d/app/AlbumSetPage;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->removeCustomFolder(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->hideDetails()V

    return-void
.end method

.method static synthetic access$2702(Lcom/android/gallery3d/app/AlbumSetPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mInitialSynced:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/gallery3d/app/AlbumSetPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->clearLoadingBit(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/gallery3d/app/AlbumSetPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/DetailsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/gallery3d/app/AlbumSetPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->setLoadingBit(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/AlbumSetDataLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/gallery3d/app/AlbumSetPage;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mButtonNewFolderOk:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/gallery3d/app/AlbumSetPage;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNameEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/gallery3d/app/AlbumSetPage;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->copyMoveFileToNewFolder(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/gallery3d/app/AlbumSetPage;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->getScanDirectoryAfterCopyMoveToNewFolder()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/gallery3d/app/AlbumSetPage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDstNewDirPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/gallery3d/app/AlbumSetPage;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLockIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/gallery3d/app/AlbumSetPage;)Landroid/graphics/NinePatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNormal:Landroid/graphics/NinePatch;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/gallery3d/app/AlbumSetPage;)Landroid/graphics/NinePatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mWarning:Landroid/graphics/NinePatch;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/gallery3d/app/AlbumSetPage;)Landroid/graphics/NinePatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShadow:Landroid/graphics/NinePatch;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/SlotView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/NoItemView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNoItemView:Lcom/android/gallery3d/ui/NoItemView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/AlbumSetPage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mX:F

    return v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/AlbumSetPage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mY:F

    return v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/AlbumSetPage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mZ:F

    return v0
.end method

.method private addAlbumSet()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1087
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.meizu.action.CHOOSE_MULTI_FILE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1088
    const-string v2, "botton_text"

    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0145

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1089
    const-string v0, "select_dir"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1090
    const-string v0, "filterAllFile"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1091
    const/high16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1092
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1093
    return-void
.end method

.method private addCustomFolder(Ljava/util/ArrayList;)V
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, folderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v12, 0x4

    const/4 v11, 0x2

    .line 1096
    const/4 v6, 0x0

    .line 1097
    .local v6, itemAddedCount:I
    const/4 v3, 0x0

    .line 1098
    .local v3, folderAddedCount:I
    const/4 v4, 0x0

    .line 1099
    .local v4, folderToAddCount:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 1100
    iget-object v10, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v10, Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    .line 1101
    .local v0, app:Lcom/android/gallery3d/app/GalleryApp;
    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getCustomFolder()Lcom/android/gallery3d/data/CustomFolder;

    move-result-object v1

    .line 1102
    .local v1, customFolder:Lcom/android/gallery3d/data/CustomFolder;
    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1103
    .local v8, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    .line 1104
    .local v9, uri:Landroid/net/Uri;
    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1105
    .local v2, folder:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/AlbumSetPage;->isFolderExist(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1106
    iget v10, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaType:I

    invoke-static {v8, v2, v10}, Lcom/android/gallery3d/data/LocalAlbumSet;->getTotalItemCountByDirectory(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1108
    .local v7, itemCount:I
    if-lez v7, :cond_1

    .line 1109
    iget v10, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaType:I

    invoke-virtual {v1, v2, v10}, Lcom/android/gallery3d/data/CustomFolder;->addFolder(Ljava/lang/String;I)V

    .line 1110
    add-int/2addr v6, v7

    .line 1111
    add-int/lit8 v3, v3, 0x1

    .line 1113
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1117
    .end local v2           #folder:Ljava/lang/String;
    .end local v7           #itemCount:I
    .end local v9           #uri:Landroid/net/Uri;
    :cond_2
    if-nez v4, :cond_4

    .line 1143
    .end local v0           #app:Lcom/android/gallery3d/app/GalleryApp;
    .end local v1           #customFolder:Lcom/android/gallery3d/data/CustomFolder;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #resolver:Landroid/content/ContentResolver;
    :cond_3
    :goto_1
    return-void

    .line 1120
    .restart local v0       #app:Lcom/android/gallery3d/app/GalleryApp;
    .restart local v1       #customFolder:Lcom/android/gallery3d/data/CustomFolder;
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v8       #resolver:Landroid/content/ContentResolver;
    :cond_4
    if-nez v6, :cond_5

    .line 1122
    iget v10, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaType:I

    if-eq v10, v11, :cond_3

    .line 1124
    iget v10, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaType:I

    if-ne v10, v12, :cond_3

    goto :goto_1

    .line 1131
    :cond_5
    iget v10, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaType:I

    if-ne v10, v11, :cond_7

    .line 1138
    :cond_6
    :goto_2
    iget-object v10, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v10}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/gallery3d/data/DataManager;->fakeChange()V

    goto :goto_1

    .line 1133
    :cond_7
    iget v10, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaType:I

    if-ne v10, v12, :cond_6

    goto :goto_2
.end method

.method private clearLoadingBit(I)V
    .locals 3
    .parameter "loadingBit"

    .prologue
    const/4 v2, 0x1

    .line 561
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    .line 562
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 566
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 567
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f0a0179

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 569
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 573
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->removeAllComponents()V

    .line 574
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNoItemView:Lcom/android/gallery3d/ui/NoItemView;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 575
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mUseNoItemView:Z

    .line 576
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v0

    .line 582
    :cond_2
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mUseNoItemView:Z

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 585
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->removeAllComponents()V

    .line 586
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 587
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mUseNoItemView:Z

    .line 588
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 590
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    goto :goto_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v0
.end method

.method private copyMoveFileToNewFolder(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 1441
    new-instance v0, Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mSharedSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    .line 1442
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    .line 1443
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDstNewDirPath:Ljava/lang/String;

    .line 1444
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSrcRootDirPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v1

    .line 1445
    new-instance v2, Lcom/android/gallery3d/app/AlbumSetPage$13;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/gallery3d/app/AlbumSetPage$13;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/data/MediaSet;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->setRequestArgFetcher(Lcom/android/gallery3d/ui/MenuExecutor$RequestArgFetcher;)V

    .line 1468
    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$14;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/gallery3d/app/AlbumSetPage$14;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;Ljava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor;)V

    .line 1503
    const v2, 0x7f0d01b6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    .line 1504
    return-void
.end method

.method private getScanDirectoryAfterCopyMoveToNewFolder()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1507
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDstNewDirPath:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDstNewDirPath:Ljava/lang/String;

    .line 1508
    .local v1, dstPath:Ljava/lang/String;
    :goto_0
    iget v3, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    packed-switch v3, :pswitch_data_0

    .line 1511
    new-array v3, v6, [Ljava/lang/String;

    aput-object v1, v3, v5

    .line 1519
    :goto_1
    return-object v3

    .line 1507
    .end local v1           #dstPath:Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/android/gallery3d/util/MediaSetUtils;->PHOTO_DIR:Ljava/lang/String;

    goto :goto_0

    .line 1514
    .restart local v1       #dstPath:Ljava/lang/String;
    :pswitch_0
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSrcRootDirPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    .line 1515
    .local v2, srcSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->getDirectory()Ljava/lang/String;

    move-result-object v0

    .line 1516
    .local v0, dir:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1517
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v5

    aput-object v0, v3, v6

    goto :goto_1

    .line 1519
    :cond_1
    new-array v3, v6, [Ljava/lang/String;

    aput-object v1, v3, v5

    goto :goto_1

    .line 1508
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private getSlotCenter(I[I)V
    .locals 8
    .parameter "slotIndex"
    .parameter "center"

    .prologue
    .line 267
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 268
    .local v0, offset:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v4, v5, v0}, Lcom/android/gallery3d/ui/GLView;->getBoundsOf(Lcom/android/gallery3d/ui/GLView;Landroid/graphics/Rect;)Z

    .line 269
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v4, p1}, Lcom/android/gallery3d/ui/SlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 270
    .local v1, r:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView;->getScrollX()I

    move-result v2

    .line 271
    .local v2, scrollX:I
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView;->getScrollY()I

    move-result v3

    .line 272
    .local v3, scrollY:I
    const/4 v4, 0x0

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v5, v2

    aput v5, p2, v4

    .line 273
    const/4 v4, 0x1

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v5, v3

    aput v5, p2, v4

    .line 274
    return-void
.end method

.method private hasCustomFolderSelected()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1359
    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 1360
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

    .line 1361
    .local v2, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v2}, Lcom/android/gallery3d/data/Path;->getObject()Lcom/android/gallery3d/data/MediaObject;

    move-result-object v1

    .line 1362
    .local v1, object:Lcom/android/gallery3d/data/MediaObject;
    if-eqz v1, :cond_0

    instance-of v5, v1, Lcom/android/gallery3d/data/LocalAlbum;

    if-eqz v5, :cond_0

    check-cast v1, Lcom/android/gallery3d/data/LocalAlbum;

    .end local v1           #object:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/LocalAlbum;->isCustomFolder()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1363
    const/4 v4, 0x1

    .line 1366
    .end local v2           #path:Lcom/android/gallery3d/data/Path;
    :cond_1
    return v4
.end method

.method private hideDetails()V
    .locals 2

    .prologue
    .line 1197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    .line 1198
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->hide()V

    .line 1199
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V

    .line 1200
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 1201
    return-void
.end method

.method private initDragBitmap()V
    .locals 6

    .prologue
    .line 479
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNormal:Landroid/graphics/NinePatch;

    if-nez v3, :cond_0

    .line 480
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080522

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 482
    .local v0, normal:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/NinePatch;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    const-string v5, "normal"

    invoke-direct {v3, v0, v4, v5}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNormal:Landroid/graphics/NinePatch;

    .line 484
    .end local v0           #normal:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mWarning:Landroid/graphics/NinePatch;

    if-nez v3, :cond_1

    .line 485
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x108051f

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 487
    .local v2, warning:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/NinePatch;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    const-string v5, "warning"

    invoke-direct {v3, v2, v4, v5}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mWarning:Landroid/graphics/NinePatch;

    .line 489
    .end local v2           #warning:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShadow:Landroid/graphics/NinePatch;

    if-nez v3, :cond_2

    .line 490
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02016d

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 492
    .local v1, shadow:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/NinePatch;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    const-string v5, "shadow"

    invoke-direct {v3, v1, v4, v5}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShadow:Landroid/graphics/NinePatch;

    .line 494
    .end local v1           #shadow:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLockIcon:Landroid/graphics/Bitmap;

    if-nez v3, :cond_3

    .line 495
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200d4

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLockIcon:Landroid/graphics/Bitmap;

    .line 498
    :cond_3
    return-void
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 687
    const-string v0, "media-path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 689
    const-string v1, "/local/image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 690
    iget v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaType:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaType:I

    .line 692
    :cond_0
    const-string v1, "/local/video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 693
    iget v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaType:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaType:I

    .line 695
    :cond_1
    const-string v1, "/local/all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 696
    iget v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaType:I

    or-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaType:I

    .line 699
    :cond_2
    iget v1, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    if-eq v1, v3, :cond_3

    iget v1, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 700
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/combo/{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",/icon/folder/}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 704
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 705
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcom/android/gallery3d/data/MediaSet;)V

    .line 706
    new-instance v0, Lcom/android/gallery3d/app/AlbumSetDataLoader;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    const/16 v3, 0x100

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/app/AlbumSetDataLoader;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/data/MediaSet;I)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    .line 708
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/app/AlbumSetPage$1;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->setLoadingListener(Lcom/android/gallery3d/app/LoadingListener;)V

    .line 709
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setModel(Lcom/android/gallery3d/app/AlbumSetDataLoader;)V

    .line 710
    return-void

    .line 701
    :cond_5
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getIntentType()Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    move-result-object v1

    iget v1, v1, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mType:I

    if-ne v1, v3, :cond_4

    .line 702
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/combo/{/icon/favorite/,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initializeViews()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 713
    new-instance v0, Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;-><init>(Lcom/android/gallery3d/app/GalleryContext;I)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 714
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/ui/SelectionManager;->setSelectionListener(Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;)V

    .line 716
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/android/gallery3d/app/Config$AlbumSetPage;->get(Landroid/content/Context;)Lcom/android/gallery3d/app/Config$AlbumSetPage;

    move-result-object v0

    .line 717
    new-instance v1, Lcom/android/gallery3d/ui/SlotView;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v3, v0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    new-instance v4, Lcom/android/gallery3d/ui/SlotView$GridLayout;

    invoke-direct {v4}, Lcom/android/gallery3d/ui/SlotView$GridLayout;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lcom/android/gallery3d/ui/SlotView;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SlotView$Spec;Lcom/android/gallery3d/ui/SlotView$Layout;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    .line 718
    new-instance v1, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v0, v0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    .line 720
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setSlotRenderer(Lcom/android/gallery3d/ui/SlotView$SlotRenderer;)V

    .line 721
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$6;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/AlbumSetPage$6;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setListener(Lcom/android/gallery3d/ui/SlotView$Listener;)V

    .line 743
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {p0, v0, v5}, Lcom/android/gallery3d/app/AlbumSetPage;->setNoItemViewState(ZZ)V

    .line 745
    new-instance v0, Lcom/android/gallery3d/ui/ActionModeHandler;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mTitle:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/ActionModeHandler;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    .line 746
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsVideo:Z

    if-eqz v0, :cond_0

    const v0, 0x7f110004

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->setViewId(I)V

    .line 747
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$7;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/AlbumSetPage$7;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->setActionModeListener(Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;)V

    .line 806
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 807
    iput-boolean v5, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mUseNoItemView:Z

    .line 810
    return-void

    .line 746
    :cond_0
    const v0, 0x7f110001

    goto :goto_0
.end method

.method private isFolderExist(Ljava/lang/String;)Z
    .locals 6
    .parameter "folder"

    .prologue
    const/4 v4, 0x1

    .line 1068
    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    .line 1069
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 1070
    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v5, v2}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    .line 1071
    .local v3, set:Lcom/android/gallery3d/data/MediaSet;
    instance-of v5, v3, Lcom/android/gallery3d/data/LocalAlbum;

    if-eqz v5, :cond_1

    .line 1072
    check-cast v3, Lcom/android/gallery3d/data/LocalAlbum;

    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v3}, Lcom/android/gallery3d/data/LocalAlbum;->getDirectory()Ljava/lang/String;

    move-result-object v1

    .line 1073
    .local v1, dir:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1083
    .end local v1           #dir:Ljava/lang/String;
    :cond_0
    :goto_1
    return v4

    .line 1076
    .restart local v3       #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_1
    instance-of v5, v3, Lcom/android/gallery3d/data/LocalMergeAlbum;

    if-eqz v5, :cond_2

    .line 1077
    check-cast v3, Lcom/android/gallery3d/data/LocalMergeAlbum;

    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v3}, Lcom/android/gallery3d/data/LocalMergeAlbum;->getDirectory()Ljava/lang/String;

    move-result-object v1

    .line 1078
    .restart local v1       #dir:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1069
    .end local v1           #dir:Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1083
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private onDown(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setPressedIndex(I)V

    .line 431
    return-void
.end method

.method private onDragEnd()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1651
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDelayUpdate:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1652
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setDragItemPath(Lcom/android/gallery3d/data/Path;)V

    .line 1653
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->getView()Landroid/view/View;

    move-result-object v0

    .line 1654
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 1655
    invoke-virtual {v0}, Landroid/view/View;->releaseDragViewSurface()V

    .line 1656
    iput-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDragBuilder:Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;

    .line 1657
    return-void
.end method

.method private onDragStarted(Lcom/android/gallery3d/data/Path;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 1660
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setDragItemPath(Lcom/android/gallery3d/data/Path;)V

    .line 1661
    return-void
.end method

.method private onUp(Z)V
    .locals 2
    .parameter "followedByLongPress"

    .prologue
    .line 434
    if-eqz p1, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setPressedIndex(I)V

    .line 440
    :goto_0
    return-void

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setPressedUp()V

    goto :goto_0
.end method

.method private pickAlbum(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 304
    iget-boolean v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    if-nez v2, :cond_1

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    .line 307
    if-eqz v2, :cond_0

    .line 309
    instance-of v3, v2, Lcom/android/gallery3d/data/FolderIconAlbum;

    if-eqz v3, :cond_2

    .line 310
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->showNewFolderDlg()V

    goto :goto_0

    .line 312
    :cond_2
    instance-of v3, v2, Lcom/android/gallery3d/data/FavoriteIconAlbum;

    if-eqz v3, :cond_6

    .line 315
    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->getmHasCheckVersion()Z

    move-result v2

    if-nez v2, :cond_4

    .line 316
    invoke-static {v1}, Lcom/android/gallery3d/app/VideoGallery;->setmHasCheckVersion(Z)V

    .line 317
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/video/client/util/CommonUtil;->ifNeedForceUpdate(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 318
    const-string v2, "systemAppsUpdate"

    .line 319
    const-string v3, "apps"

    .line 320
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 321
    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 322
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.android.gallery3d"

    aput-object v2, v1, v0

    invoke-virtual {v4, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const/high16 v0, 0x400

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 324
    const-string v0, "com.meizu.mstore"

    const-string v1, "com.meizu.mstore.MStoreMainPlusActivity"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 326
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 329
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/video/client/util/CommonUtil;->reportLoginForLS(Landroid/content/Context;)V

    .line 334
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 335
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 336
    const-string v2, "tag_favorite"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 337
    if-nez v0, :cond_5

    .line 338
    new-instance v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    invoke-direct {v0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;-><init>()V

    .line 339
    const v2, 0x7f0d01a2

    const-string v3, "tag_favorite"

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_0

    .line 341
    :cond_5
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_0

    .line 346
    :cond_6
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->getLockState()I

    move-result v3

    .line 347
    invoke-static {}, Lcom/android/gallery3d/data/MediaObject;->isLockEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    if-lez v3, :cond_7

    and-int/lit8 v3, v3, 0x5

    if-eqz v3, :cond_7

    .line 349
    iput p1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPickedAlbumIndex:I

    .line 350
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/AlbumSetPage;->popupPasswordPad(I)V

    goto/16 :goto_0

    .line 354
    :cond_7
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    .line 356
    new-instance v4, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 357
    new-array v5, v7, [I

    .line 358
    invoke-direct {p0, p1, v5}, Lcom/android/gallery3d/app/AlbumSetPage;->getSlotCenter(I[I)V

    .line 359
    const-string v6, "set-center"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 360
    iget-boolean v5, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    if-eqz v5, :cond_8

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->isLeafAlbum()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 361
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 362
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "album-path"

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 364
    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 365
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 366
    :cond_8
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v5

    if-lez v5, :cond_9

    .line 367
    const-string v0, "media-path"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v0, v2, v1, v4}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 403
    :cond_9
    iget-boolean v5, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetContent:Z

    if-nez v5, :cond_a

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->getSupportedOperations()I

    move-result v2

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_a

    .line 405
    const-string v2, "auto-select-all"

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 407
    :cond_a
    const-string v2, "media-path"

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v2

    .line 411
    const-string v3, "cluster-menu"

    if-nez v2, :cond_b

    move v0, v1

    :cond_b
    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 412
    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 415
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSetWallpaper:Z

    if-eqz v0, :cond_c

    .line 416
    const-string v0, "key-set-wallpaper"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 417
    :cond_c
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v0, v2, v1, v4}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 422
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/android/gallery3d/app/AlbumPage;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mSharedSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, v1, v7, v4, v2}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;Lcom/android/gallery3d/ui/SelectionManager;)V

    goto/16 :goto_0

    .line 412
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private removeCustomFolder(Z)Z
    .locals 12
    .parameter "deleteOrig"

    .prologue
    const/4 v9, 0x0

    .line 1324
    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v6

    .line 1325
    .local v6, selectedSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1326
    .local v5, selectedCount:I
    if-lez v5, :cond_6

    .line 1327
    const/4 v1, 0x0

    .line 1328
    .local v1, customFolderCount:I
    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v8, Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    .line 1329
    .local v0, app:Lcom/android/gallery3d/app/GalleryApp;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/Path;

    .line 1330
    .local v4, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v4}, Lcom/android/gallery3d/data/Path;->getObject()Lcom/android/gallery3d/data/MediaObject;

    move-result-object v3

    .line 1331
    .local v3, object:Lcom/android/gallery3d/data/MediaObject;
    instance-of v8, v3, Lcom/android/gallery3d/data/LocalAlbum;

    if-eqz v8, :cond_2

    move-object v7, v3

    .line 1332
    check-cast v7, Lcom/android/gallery3d/data/LocalAlbum;

    .line 1333
    .local v7, set:Lcom/android/gallery3d/data/LocalAlbum;
    invoke-virtual {v7}, Lcom/android/gallery3d/data/LocalAlbum;->isCustomFolder()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1334
    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getCustomFolder()Lcom/android/gallery3d/data/CustomFolder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/gallery3d/data/LocalAlbum;->getDirectory()Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaType:I

    invoke-virtual {v8, v10, v11}, Lcom/android/gallery3d/data/CustomFolder;->removeFolder(Ljava/lang/String;I)V

    .line 1335
    if-nez p1, :cond_1

    .line 1336
    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8, v4}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 1337
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1339
    .end local v7           #set:Lcom/android/gallery3d/data/LocalAlbum;
    :cond_2
    instance-of v8, v3, Lcom/android/gallery3d/data/LocalMergeAlbum;

    if-eqz v8, :cond_0

    move-object v7, v3

    .line 1340
    check-cast v7, Lcom/android/gallery3d/data/LocalMergeAlbum;

    .line 1341
    .local v7, set:Lcom/android/gallery3d/data/LocalMergeAlbum;
    invoke-virtual {v7}, Lcom/android/gallery3d/data/LocalMergeAlbum;->isCustomFolder()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1342
    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getCustomFolder()Lcom/android/gallery3d/data/CustomFolder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/gallery3d/data/LocalMergeAlbum;->getDirectory()Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaType:I

    invoke-virtual {v8, v10, v11}, Lcom/android/gallery3d/data/CustomFolder;->removeFolder(Ljava/lang/String;I)V

    .line 1343
    if-nez p1, :cond_3

    .line 1344
    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8, v4}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 1345
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1349
    .end local v3           #object:Lcom/android/gallery3d/data/MediaObject;
    .end local v4           #path:Lcom/android/gallery3d/data/Path;
    .end local v7           #set:Lcom/android/gallery3d/data/LocalMergeAlbum;
    :cond_4
    if-eq v1, v5, :cond_5

    .line 1350
    const/4 v8, 0x1

    .line 1355
    .end local v0           #app:Lcom/android/gallery3d/app/GalleryApp;
    .end local v1           #customFolderCount:I
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_1
    return v8

    .line 1351
    .restart local v0       #app:Lcom/android/gallery3d/app/GalleryApp;
    .restart local v1       #customFolderCount:I
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_5
    if-lez v1, :cond_6

    .line 1352
    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v8}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/data/DataManager;->fakeChange()V

    .end local v0           #app:Lcom/android/gallery3d/app/GalleryApp;
    .end local v1           #customFolderCount:I
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_6
    move v8, v9

    .line 1355
    goto :goto_1
.end method

.method private setLoadingBit(I)V
    .locals 1
    .parameter "loadingBit"

    .prologue
    .line 598
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    .line 599
    return-void
.end method

.method private setNoItemViewState(ZZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 815
    if-eqz p1, :cond_3

    .line 816
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsVideo:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0200c3

    .line 817
    :goto_0
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsVideo:Z

    if-eqz v1, :cond_2

    const v1, 0x7f0a01fb

    .line 822
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNoItemView:Lcom/android/gallery3d/ui/NoItemView;

    .line 823
    new-instance v2, Lcom/android/gallery3d/ui/NoItemView;

    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-direct {v2, v3, v0, v1}, Lcom/android/gallery3d/ui/NoItemView;-><init>(Lcom/android/gallery3d/app/GalleryContext;II)V

    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNoItemView:Lcom/android/gallery3d/ui/NoItemView;

    .line 825
    if-eqz p2, :cond_0

    .line 826
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->removeAllComponents()V

    .line 827
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNoItemView:Lcom/android/gallery3d/ui/NoItemView;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 828
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mUseNoItemView:Z

    .line 829
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->requestLayout()V

    .line 830
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 832
    :cond_0
    return-void

    .line 816
    :cond_1
    const v0, 0x7f0200c2

    goto :goto_0

    .line 817
    :cond_2
    const v1, 0x7f0a01fa

    goto :goto_1

    .line 819
    :cond_3
    const v0, 0x7f0200f4

    .line 820
    const v1, 0x7f0a01fc

    goto :goto_1
.end method

.method private showDetails()V
    .locals 4

    .prologue
    .line 1204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    .line 1205
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    if-nez v0, :cond_0

    .line 1206
    new-instance v0, Lcom/android/gallery3d/ui/DetailsHelper;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsSource:Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/DetailsHelper;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    .line 1207
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$9;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/AlbumSetPage$9;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/DetailsHelper;->setCloseListener(Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;)V

    .line 1214
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->show()V

    .line 1215
    return-void
.end method

.method private showNewFolderDlg()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1370
    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$11;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/AlbumSetPage$11;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    .line 1388
    new-instance v2, Lcom/android/gallery3d/app/AlbumSetPage$12;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/AlbumSetPage$12;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    .line 1422
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x1030323

    invoke-direct {v3, v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1424
    const v0, 0x7f0a01f5

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1425
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f04001f

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1427
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1428
    const v4, 0x7f0d005e

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNameEditor:Landroid/widget/EditText;

    .line 1429
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNameEditor:Landroid/widget/EditText;

    const v4, 0x7f0a020b

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(I)V

    .line 1430
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNameEditor:Landroid/widget/EditText;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNameEditor:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/EditText;->setSelection(II)V

    .line 1431
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNameEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1433
    const v0, 0x7f0a0145

    invoke-virtual {v3, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1434
    const v0, 0x7f0a0153

    invoke-virtual {v3, v0, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1435
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1436
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mButtonNewFolderOk:Landroid/widget/Button;

    .line 1438
    return-void
.end method


# virtual methods
.method public doCluster(I)V
    .locals 3
    .parameter

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 503
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/FilterUtils;->switchClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 504
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 505
    const-string v2, "media-path"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v0, "selected-cluster"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 507
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 508
    return-void
.end method

.method public mzRecentDismiss()V
    .locals 1

    .prologue
    .line 1672
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsVideo:Z

    if-nez v0, :cond_0

    .line 1673
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->mzRecentDismiss()V

    .line 1675
    :cond_0
    return-void
.end method

.method public mzRecentShow()V
    .locals 1

    .prologue
    .line 1665
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsVideo:Z

    if-nez v0, :cond_0

    .line 1666
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->mzRecentShow()V

    .line 1668
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    if-eqz v0, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->hideDetails()V

    .line 264
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 262
    :cond_1
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 5
    .parameter "data"
    .parameter "restoreState"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 512
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 513
    const-string v1, "set-title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mTitle:Ljava/lang/String;

    .line 514
    const-string v1, "key-src-root-dir"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSrcRootDirPath:Ljava/lang/String;

    .line 515
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getIntentType()Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    move-result-object v1

    iget v1, v1, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mType:I

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsVideo:Z

    .line 516
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->initializeViews()V

    .line 517
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->initializeData(Landroid/os/Bundle;)V

    .line 518
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 519
    .local v0, context:Landroid/content/Context;
    const-string v1, "get-content"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetContent:Z

    .line 520
    const-string v1, "get-album"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    .line 521
    const-string v1, "key-set-wallpaper"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSetWallpaper:Z

    .line 523
    new-instance v1, Lcom/android/gallery3d/app/EyePosition;

    invoke-direct {v1, v0, p0}, Lcom/android/gallery3d/app/EyePosition;-><init>(Landroid/content/Context;Lcom/android/gallery3d/app/EyePosition$EyePositionListener;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;

    .line 524
    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;

    invoke-direct {v1, p0, v4}, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/app/AlbumSetPage$1;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsSource:Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;

    .line 526
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    .line 527
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/GalleryActionBar;->useMzTitleLayout(Z)V

    .line 529
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->hasPermanentMenuKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040002

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/widget/GlowImageButton;

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCustomAddSetView:Lcom/meizu/widget/GlowImageButton;

    .line 531
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCustomAddSetView:Lcom/meizu/widget/GlowImageButton;

    const v2, 0x7f020015

    invoke-virtual {v1, v2}, Lcom/meizu/widget/GlowImageButton;->setImageResource(I)V

    .line 532
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCustomAddSetView:Lcom/meizu/widget/GlowImageButton;

    new-instance v2, Lcom/android/gallery3d/app/AlbumSetPage$3;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/AlbumSetPage$3;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    invoke-virtual {v1, v2}, Lcom/meizu/widget/GlowImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    :cond_0
    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$4;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/app/AlbumSetPage$4;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    .line 558
    return-void

    .end local v0           #context:Landroid/content/Context;
    :cond_1
    move v1, v3

    .line 515
    goto :goto_0
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 10
    .parameter

    .prologue
    const v9, 0x7f0d01b5

    const/16 v1, 0x8

    const/4 v8, -0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 836
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 837
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getIntentType()Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    move-result-object v2

    .line 838
    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v5}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    .line 839
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    if-eqz v6, :cond_3

    .line 840
    iget v6, v2, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mType:I

    if-ne v6, v4, :cond_4

    .line 902
    :goto_0
    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->getmSelectedPage()I

    move-result v0

    if-nez v0, :cond_8

    move v0, v4

    .line 903
    :goto_1
    if-eqz v0, :cond_1

    .line 904
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "tag_favorite"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 905
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_0
    move v0, v4

    .line 907
    :cond_1
    :goto_2
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsVideo:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_3

    .line 908
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(Ljava/lang/String;)V

    .line 912
    :cond_3
    return v4

    .line 844
    :cond_4
    iget v6, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaType:I

    if-eqz v6, :cond_7

    .line 845
    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v6

    .line 846
    iget v7, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    packed-switch v7, :pswitch_data_0

    .line 849
    const v0, 0x7f110006

    invoke-virtual {v6, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 851
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSetWallpaper:Z

    if-nez v0, :cond_5

    iget v0, v2, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mType:I

    if-eqz v0, :cond_6

    .line 852
    :cond_5
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move v0, v1

    .line 896
    :goto_3
    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 897
    invoke-virtual {v5, v4}, Landroid/app/ActionBar;->setActionModeHeaderHidden(Z)V

    .line 898
    invoke-virtual {v5, v4}, Landroid/app/ActionBar;->setEnabledBackWhenOverlay(Z)V

    goto :goto_0

    .line 854
    :cond_6
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 855
    const/16 v0, 0x18

    .line 856
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 857
    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 858
    const/4 v2, 0x5

    iput v2, v1, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 859
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    iput v2, v1, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    .line 860
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCustomAddSetView:Lcom/meizu/widget/GlowImageButton;

    invoke-virtual {v5, v2, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_3

    .line 880
    :pswitch_0
    const v1, 0x7f110008

    invoke-virtual {v6, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 881
    const/16 v2, 0x10

    .line 882
    const v1, 0x7f0d01b6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 884
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04004b

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 885
    invoke-virtual {v5, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 886
    const v0, 0x7f0d00fd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 887
    const v6, 0x7f0d00fe

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 888
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 889
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v6, 0x7f0a

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v2

    goto :goto_3

    :cond_7
    move v0, v1

    .line 893
    goto :goto_3

    :cond_8
    move v0, v3

    .line 902
    goto/16 :goto_1

    :cond_9
    move v0, v3

    .line 905
    goto/16 :goto_2

    :cond_a
    move v0, v1

    goto :goto_3

    .line 846
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 630
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onDestroy()V

    .line 631
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCustomAddSetView:Lcom/meizu/widget/GlowImageButton;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCustomAddSetView:Lcom/meizu/widget/GlowImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/widget/GlowImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->destroy()V

    .line 635
    return-void
.end method

.method public onEyePositionChanged(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->lockRendering()V

    .line 248
    iput p1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mX:F

    .line 249
    iput p2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mY:F

    .line 250
    iput p3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mZ:F

    .line 251
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->unlockRendering()V

    .line 252
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 253
    return-void
.end method

.method public onHudViewClicked(ILjava/lang/Object;)Z
    .locals 2
    .parameter "id"
    .parameter "arg"

    .prologue
    .line 1297
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 1298
    .local v0, context:Landroid/content/Context;
    packed-switch p1, :pswitch_data_0

    .line 1320
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v1, 0x1

    return v1

    .line 1302
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->onBackPressed()V

    goto :goto_0

    .line 1305
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/AlbumSetPage;->sharedByEmail(Landroid/content/Context;)Z

    goto :goto_0

    .line 1308
    :pswitch_3
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/AlbumSetPage;->removeCustomFolder(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1309
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/app/AlbumSetPage;->deleteSelectedObject(ILjava/lang/Object;)V

    goto :goto_0

    .line 1313
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->onHudViewSelect()V

    goto :goto_0

    .line 1316
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->onHudViewShare(I)V

    goto :goto_0

    .line 1298
    :pswitch_data_0
    .packed-switch 0x200
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 917
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 918
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 1011
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/AlbumSetPage;->popupPasswordPadIfNeeded(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1012
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedMenuItem:Landroid/view/MenuItem;

    move v0, v1

    .line 1019
    :goto_0
    return v0

    .line 920
    :sswitch_0
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 921
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    move v0, v1

    .line 922
    goto :goto_0

    .line 924
    :sswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 925
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    move v0, v1

    .line 926
    goto :goto_0

    .line 928
    :sswitch_2
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 929
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    if-eqz v0, :cond_0

    .line 930
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->hideDetails()V

    :goto_1
    move v0, v1

    .line 939
    goto :goto_0

    .line 932
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->showDetails()V

    goto :goto_1

    .line 935
    :cond_1
    const v3, 0x7f0a0178

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 961
    :sswitch_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->addAlbumSet()V

    move v0, v1

    .line 962
    goto :goto_0

    .line 965
    :sswitch_4
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/AlbumSetPage;->popupPasswordPadIfNeeded(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 966
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedMenuItem:Landroid/view/MenuItem;

    move v0, v1

    .line 967
    goto :goto_0

    .line 969
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->hasCustomFolderSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 971
    const v2, 0x1030323

    .line 972
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 973
    const v3, 0x7f040072

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 975
    new-instance v3, Lcom/android/gallery3d/app/AlbumSetPage$8;

    invoke-direct {v3, p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage$8;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;Landroid/view/MenuItem;)V

    .line 997
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v5}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0a01f4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0a0153

    invoke-virtual {v0, v2, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0a0145

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRemoveFileDlg:Landroid/app/AlertDialog;

    .line 1003
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRemoveFileDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v0, v1

    .line 1004
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 1019
    goto/16 :goto_0

    .line 918
    :sswitch_data_0
    .sparse-switch
        0x7f0d01b0 -> :sswitch_4
        0x7f0d01b2 -> :sswitch_1
        0x7f0d01b5 -> :sswitch_3
        0x7f0d01ca -> :sswitch_2
        0x7f0d01cf -> :sswitch_0
    .end sparse-switch
.end method

.method public onLongTap(III)V
    .locals 12
    .parameter "slotIndex"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v11, 0x0

    .line 443
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetContent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSetWallpaper:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    if-eqz v0, :cond_1

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v9

    .line 445
    .local v9, set:Lcom/android/gallery3d/data/MediaSet;
    if-eqz v9, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 447
    invoke-virtual {v9}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v7

    .line 448
    .local v7, path:Lcom/android/gallery3d/data/Path;
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, v7}, Lcom/android/gallery3d/ui/SelectionManager;->isItemSelected(Lcom/android/gallery3d/data/Path;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 449
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, v7}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 451
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsSource:Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->findIndex(I)I

    .line 452
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 454
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->initDragBitmap()V

    .line 455
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->getAlbumSetEntry(I)Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v2

    .line 456
    .local v2, entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/SlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v8

    .line 457
    .local v8, r:Landroid/graphics/Rect;
    new-instance v0, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object v1, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;IIII)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDragBuilder:Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;

    .line 458
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->getView()Landroid/view/View;

    move-result-object v10

    .line 459
    .local v10, view:Landroid/view/View;
    new-instance v0, Lcom/android/gallery3d/app/AlbumSetPage$2;

    invoke-direct {v0, p0, v7}, Lcom/android/gallery3d/app/AlbumSetPage$2;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/data/Path;)V

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 474
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDragBuilder:Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;

    const/4 v1, 0x0

    invoke-virtual {v10, v11, v0, v11, v1}, Landroid/view/View;->startDragMz(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 603
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onPause()V

    .line 604
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    .line 605
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->pause()V

    .line 606
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->pause()V

    .line 607
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 609
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->pause()V

    .line 610
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 614
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/EyePosition;->pause()V

    .line 615
    invoke-static {}, Lcom/android/gallery3d/ui/DetailsHelper;->pause()V

    .line 620
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 622
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 623
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/AlbumSetPage;->clearLoadingBit(I)V

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 626
    return-void

    .line 612
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 639
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onResume()V

    .line 640
    iput-boolean v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    .line 641
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/AlbumSetPage;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 644
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/AlbumSetPage;->setLoadingBit(I)V

    .line 645
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->resume()V

    .line 646
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->resume()V

    .line 648
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->resume()V

    .line 649
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/EyePosition;->resume()V

    .line 650
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->resume()V

    .line 654
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mInitialSynced:Z

    if-nez v1, :cond_0

    .line 655
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/AlbumSetPage;->setLoadingBit(I)V

    .line 656
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/data/MediaSet;->requestSync(Lcom/android/gallery3d/data/MediaSet$SyncListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 659
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 660
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 661
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 662
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 663
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 664
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 665
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 666
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/GalleryActionBar;->show()V

    .line 668
    :cond_1
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsVideo:Z

    if-nez v1, :cond_2

    .line 669
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 670
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 672
    :cond_2
    return-void
.end method

.method public onSelectionChange(Lcom/android/gallery3d/data/Path;Z)V
    .locals 2
    .parameter "path"
    .parameter "selected"

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    if-eqz v0, :cond_0

    .line 1193
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SelectionButton;->setCurrentCount(I)V

    .line 1194
    :cond_0
    return-void
.end method

.method public onSelectionModeChange(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 1157
    packed-switch p1, :pswitch_data_0

    .line 1184
    :goto_0
    return-void

    .line 1160
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->startActionMode()Landroid/view/ActionMode;

    goto :goto_0

    .line 1167
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->finishActionMode()V

    .line 1171
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SelectionButton;->setAllSelected(Z)V

    .line 1172
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 1177
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 1178
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 1180
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SelectionButton;->setAllSelected(Z)V

    goto :goto_0

    .line 1157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSingleTapUp(I)V
    .locals 5
    .parameter "slotIndex"

    .prologue
    .line 277
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    if-nez v1, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 280
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    .line 281
    .local v0, targetSet:Lcom/android/gallery3d/data/MediaSet;
    if-eqz v0, :cond_0

    .line 282
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 283
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0

    .line 286
    .end local v0           #targetSet:Lcom/android/gallery3d/data/MediaSet;
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setPressedIndex(I)V

    .line 287
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setPressedUp()V

    .line 288
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xb4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 1024
    packed-switch p1, :pswitch_data_0

    .line 1065
    :cond_0
    :goto_0
    return-void

    .line 1026
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->startRisingAnimation()V

    goto :goto_0

    .line 1030
    :pswitch_1
    if-ne p2, v5, :cond_0

    .line 1031
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaType:I

    if-eqz v0, :cond_0

    .line 1032
    const-string v0, "folderList"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1033
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/AlbumSetPage;->addCustomFolder(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1039
    :pswitch_2
    if-ne p2, v5, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1045
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/app/AlbumSetPage;->onPasswordPadReturn(I)V

    .line 1046
    if-ne p2, v5, :cond_1

    .line 1047
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPickedAlbumIndex:I

    if-ltz v0, :cond_1

    .line 1048
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPickedAlbumIndex:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1051
    :cond_1
    iput v5, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPickedAlbumIndex:I

    goto :goto_0

    .line 1055
    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/app/AlbumSetPage;->onPasswordPadReturn(I)V

    .line 1056
    if-ne p2, v5, :cond_2

    .line 1057
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 1058
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedMenuItem:Landroid/view/MenuItem;

    invoke-virtual {v0, v2, v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 1061
    :cond_2
    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedMenuItem:Landroid/view/MenuItem;

    goto :goto_0

    .line 1024
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onSyncDone(Lcom/android/gallery3d/data/MediaSet;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1219
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 1220
    const-string v0, "AlbumSetPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSyncDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$10;

    invoke-direct {v1, p0, p2}, Lcom/android/gallery3d/app/AlbumSetPage$10;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1241
    return-void
.end method
