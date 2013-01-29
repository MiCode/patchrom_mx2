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

    .line 105
    invoke-direct {p0}, Lcom/android/gallery3d/app/ActivityState;-><init>()V

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPickedAlbumIndex:I

    .line 133
    iput-boolean v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    .line 175
    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 177
    iput v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mInitialSynced:Z

    .line 180
    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mButtonNewFolderOk:Landroid/widget/Button;

    .line 181
    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNameEditor:Landroid/widget/EditText;

    .line 183
    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNormal:Landroid/graphics/NinePatch;

    .line 184
    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mWarning:Landroid/graphics/NinePatch;

    .line 185
    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShadow:Landroid/graphics/NinePatch;

    .line 186
    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLockIcon:Landroid/graphics/Bitmap;

    .line 187
    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDragBuilder:Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;

    .line 189
    new-instance v0, Lcom/android/gallery3d/app/AlbumSetPage$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumSetPage$1;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    .line 654
    new-instance v0, Lcom/android/gallery3d/app/AlbumSetPage$4;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumSetPage$4;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1469
    new-instance v0, Lcom/android/gallery3d/app/AlbumSetPage$14;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumSetPage$14;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDelayUpdate:Ljava/lang/Runnable;

    .line 1475
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/EyePosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/AlbumSetPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsVideo:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->onDragEnd()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/data/Path;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->onDragStarted(Lcom/android/gallery3d/data/Path;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/AlbumSetPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->pickAlbum(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/AlbumSetPage;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/AlbumSetPage;->setNoItemViewState(ZZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/app/AlbumSetPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->onDown(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/app/AlbumSetPage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->onUp(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/meizu/widget/SelectionButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/meizu/widget/SelectionButton;)Lcom/meizu/widget/SelectionButton;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/ActionModeHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/AlbumSetPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/app/AlbumSetPage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDragBuilder:Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/gallery3d/app/AlbumSetPage;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRemoveFileDlg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/gallery3d/app/AlbumSetPage;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->removeCustomFolder(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->hideDetails()V

    return-void
.end method

.method static synthetic access$2602(Lcom/android/gallery3d/app/AlbumSetPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mInitialSynced:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/gallery3d/app/AlbumSetPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->clearLoadingBit(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/gallery3d/app/AlbumSetPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/gallery3d/app/AlbumSetPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->setLoadingBit(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/DetailsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/AlbumSetDataLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/gallery3d/app/AlbumSetPage;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mButtonNewFolderOk:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/gallery3d/app/AlbumSetPage;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNameEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/gallery3d/app/AlbumSetPage;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->copyMoveFileToNewFolder(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/gallery3d/app/AlbumSetPage;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->getScanDirectoryAfterCopyMoveToNewFolder()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/gallery3d/app/AlbumSetPage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDstNewDirPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/gallery3d/app/AlbumSetPage;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLockIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/gallery3d/app/AlbumSetPage;)Landroid/graphics/NinePatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNormal:Landroid/graphics/NinePatch;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/gallery3d/app/AlbumSetPage;)Landroid/graphics/NinePatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mWarning:Landroid/graphics/NinePatch;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/gallery3d/app/AlbumSetPage;)Landroid/graphics/NinePatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShadow:Landroid/graphics/NinePatch;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/SlotView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/NoItemView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNoItemView:Lcom/android/gallery3d/ui/NoItemView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/AlbumSetPage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mX:F

    return v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/AlbumSetPage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mY:F

    return v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/AlbumSetPage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mZ:F

    return v0
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

    .line 1046
    const/4 v6, 0x0

    .line 1047
    .local v6, itemAddedCount:I
    const/4 v3, 0x0

    .line 1048
    .local v3, folderAddedCount:I
    const/4 v4, 0x0

    .line 1049
    .local v4, folderToAddCount:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 1050
    iget-object v10, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v10, Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    .line 1051
    .local v0, app:Lcom/android/gallery3d/app/GalleryApp;
    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getCustomFolder()Lcom/android/gallery3d/data/CustomFolder;

    move-result-object v1

    .line 1052
    .local v1, customFolder:Lcom/android/gallery3d/data/CustomFolder;
    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1053
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

    .line 1054
    .local v9, uri:Landroid/net/Uri;
    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1055
    .local v2, folder:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/AlbumSetPage;->isFolderExist(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1056
    iget v10, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaType:I

    invoke-static {v8, v2, v10}, Lcom/android/gallery3d/data/LocalAlbumSet;->getTotalItemCountByDirectory(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1058
    .local v7, itemCount:I
    if-lez v7, :cond_1

    .line 1059
    iget v10, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaType:I

    invoke-virtual {v1, v2, v10}, Lcom/android/gallery3d/data/CustomFolder;->addFolder(Ljava/lang/String;I)V

    .line 1060
    add-int/2addr v6, v7

    .line 1061
    add-int/lit8 v3, v3, 0x1

    .line 1063
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1067
    .end local v2           #folder:Ljava/lang/String;
    .end local v7           #itemCount:I
    .end local v9           #uri:Landroid/net/Uri;
    :cond_2
    if-nez v4, :cond_4

    .line 1093
    .end local v0           #app:Lcom/android/gallery3d/app/GalleryApp;
    .end local v1           #customFolder:Lcom/android/gallery3d/data/CustomFolder;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #resolver:Landroid/content/ContentResolver;
    :cond_3
    :goto_1
    return-void

    .line 1070
    .restart local v0       #app:Lcom/android/gallery3d/app/GalleryApp;
    .restart local v1       #customFolder:Lcom/android/gallery3d/data/CustomFolder;
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v8       #resolver:Landroid/content/ContentResolver;
    :cond_4
    if-nez v6, :cond_5

    .line 1072
    iget v10, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaType:I

    if-eq v10, v11, :cond_3

    .line 1074
    iget v10, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaType:I

    if-ne v10, v12, :cond_3

    goto :goto_1

    .line 1081
    :cond_5
    iget v10, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaType:I

    if-ne v10, v11, :cond_7

    .line 1088
    :cond_6
    :goto_2
    iget-object v10, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v10}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/gallery3d/data/DataManager;->fakeChange()V

    goto :goto_1

    .line 1083
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

    .line 545
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    .line 546
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 550
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 551
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f0a016e

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 553
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 557
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->removeAllComponents()V

    .line 558
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNoItemView:Lcom/android/gallery3d/ui/NoItemView;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 559
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mUseNoItemView:Z

    .line 560
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
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

    .line 566
    :cond_2
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mUseNoItemView:Z

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 569
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->removeAllComponents()V

    .line 570
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 571
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mUseNoItemView:Z

    .line 572
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 574
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
    .line 1389
    new-instance v0, Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mSharedSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    .line 1390
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    .line 1391
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDstNewDirPath:Ljava/lang/String;

    .line 1392
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSrcRootDirPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v1

    .line 1393
    new-instance v2, Lcom/android/gallery3d/app/AlbumSetPage$12;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/gallery3d/app/AlbumSetPage$12;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/data/MediaSet;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->setRequestArgFetcher(Lcom/android/gallery3d/ui/MenuExecutor$RequestArgFetcher;)V

    .line 1416
    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$13;

    invoke-direct {v1, p0, v0}, Lcom/android/gallery3d/app/AlbumSetPage$13;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/ui/MenuExecutor;)V

    .line 1448
    const v2, 0x7f0d0197

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    .line 1449
    return-void
.end method

.method private getScanDirectoryAfterCopyMoveToNewFolder()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1452
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDstNewDirPath:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDstNewDirPath:Ljava/lang/String;

    .line 1453
    .local v1, dstPath:Ljava/lang/String;
    :goto_0
    iget v3, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    packed-switch v3, :pswitch_data_0

    .line 1456
    new-array v3, v6, [Ljava/lang/String;

    aput-object v1, v3, v5

    .line 1464
    :goto_1
    return-object v3

    .line 1452
    .end local v1           #dstPath:Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/android/gallery3d/util/MediaSetUtils;->PHOTO_DIR:Ljava/lang/String;

    goto :goto_0

    .line 1459
    .restart local v1       #dstPath:Ljava/lang/String;
    :pswitch_0
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSrcRootDirPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    .line 1460
    .local v2, srcSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->getDirectory()Ljava/lang/String;

    move-result-object v0

    .line 1461
    .local v0, dir:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1462
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v5

    aput-object v0, v3, v6

    goto :goto_1

    .line 1464
    :cond_1
    new-array v3, v6, [Ljava/lang/String;

    aput-object v1, v3, v5

    goto :goto_1

    .line 1453
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
    .line 261
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 262
    .local v0, offset:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v4, v5, v0}, Lcom/android/gallery3d/ui/GLView;->getBoundsOf(Lcom/android/gallery3d/ui/GLView;Landroid/graphics/Rect;)Z

    .line 263
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v4, p1}, Lcom/android/gallery3d/ui/SlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 264
    .local v1, r:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView;->getScrollX()I

    move-result v2

    .line 265
    .local v2, scrollX:I
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView;->getScrollY()I

    move-result v3

    .line 266
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

    .line 267
    const/4 v4, 0x1

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v5, v3

    aput v5, p2, v4

    .line 268
    return-void
.end method

.method private hasCustomFolderSelected()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1309
    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 1310
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

    .line 1311
    .local v2, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v2}, Lcom/android/gallery3d/data/Path;->getObject()Lcom/android/gallery3d/data/MediaObject;

    move-result-object v1

    .line 1312
    .local v1, object:Lcom/android/gallery3d/data/MediaObject;
    if-eqz v1, :cond_0

    instance-of v5, v1, Lcom/android/gallery3d/data/LocalAlbum;

    if-eqz v5, :cond_0

    check-cast v1, Lcom/android/gallery3d/data/LocalAlbum;

    .end local v1           #object:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/LocalAlbum;->isCustomFolder()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1313
    const/4 v4, 0x1

    .line 1316
    .end local v2           #path:Lcom/android/gallery3d/data/Path;
    :cond_1
    return v4
.end method

.method private hideDetails()V
    .locals 2

    .prologue
    .line 1147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    .line 1148
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->hide()V

    .line 1149
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V

    .line 1150
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 1151
    return-void
.end method

.method private initDragBitmap()V
    .locals 6

    .prologue
    .line 473
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNormal:Landroid/graphics/NinePatch;

    if-nez v3, :cond_0

    .line 474
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080502

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 476
    .local v0, normal:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/NinePatch;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    const-string v5, "normal"

    invoke-direct {v3, v0, v4, v5}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNormal:Landroid/graphics/NinePatch;

    .line 478
    .end local v0           #normal:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mWarning:Landroid/graphics/NinePatch;

    if-nez v3, :cond_1

    .line 479
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10804ff

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 481
    .local v2, warning:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/NinePatch;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    const-string v5, "warning"

    invoke-direct {v3, v2, v4, v5}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mWarning:Landroid/graphics/NinePatch;

    .line 483
    .end local v2           #warning:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShadow:Landroid/graphics/NinePatch;

    if-nez v3, :cond_2

    .line 484
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020172

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 486
    .local v1, shadow:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/NinePatch;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    const-string v5, "shadow"

    invoke-direct {v3, v1, v4, v5}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShadow:Landroid/graphics/NinePatch;

    .line 488
    .end local v1           #shadow:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLockIcon:Landroid/graphics/Bitmap;

    if-nez v3, :cond_3

    .line 489
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200d7

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLockIcon:Landroid/graphics/Bitmap;

    .line 492
    :cond_3
    return-void
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 667
    const-string v0, "media-path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 669
    const-string v1, "/local/image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 670
    iget v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaType:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaType:I

    .line 672
    :cond_0
    const-string v1, "/local/video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 673
    iget v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaType:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaType:I

    .line 675
    :cond_1
    const-string v1, "/local/all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 676
    iget v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaType:I

    or-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaType:I

    .line 679
    :cond_2
    iget v1, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    if-eq v1, v3, :cond_3

    iget v1, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 680
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

    .line 684
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 685
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcom/android/gallery3d/data/MediaSet;)V

    .line 686
    new-instance v0, Lcom/android/gallery3d/app/AlbumSetDataLoader;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    const/16 v3, 0x100

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/app/AlbumSetDataLoader;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/data/MediaSet;I)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    .line 688
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/app/AlbumSetPage$1;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->setLoadingListener(Lcom/android/gallery3d/app/LoadingListener;)V

    .line 689
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setModel(Lcom/android/gallery3d/app/AlbumSetDataLoader;)V

    .line 690
    return-void

    .line 681
    :cond_5
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getIntentType()Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    move-result-object v1

    iget v1, v1, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mType:I

    if-ne v1, v3, :cond_4

    .line 682
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

    .line 693
    new-instance v0, Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;-><init>(Lcom/android/gallery3d/app/GalleryContext;I)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 694
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/ui/SelectionManager;->setSelectionListener(Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;)V

    .line 696
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/android/gallery3d/app/Config$AlbumSetPage;->get(Landroid/content/Context;)Lcom/android/gallery3d/app/Config$AlbumSetPage;

    move-result-object v0

    .line 697
    new-instance v1, Lcom/android/gallery3d/ui/SlotView;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v3, v0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    new-instance v4, Lcom/android/gallery3d/ui/SlotView$GridLayout;

    invoke-direct {v4}, Lcom/android/gallery3d/ui/SlotView$GridLayout;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lcom/android/gallery3d/ui/SlotView;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SlotView$Spec;Lcom/android/gallery3d/ui/SlotView$Layout;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    .line 698
    new-instance v1, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v0, v0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    .line 700
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setSlotRenderer(Lcom/android/gallery3d/ui/SlotView$SlotRenderer;)V

    .line 701
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$5;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/AlbumSetPage$5;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setListener(Lcom/android/gallery3d/ui/SlotView$Listener;)V

    .line 723
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {p0, v0, v5}, Lcom/android/gallery3d/app/AlbumSetPage;->setNoItemViewState(ZZ)V

    .line 725
    new-instance v0, Lcom/android/gallery3d/ui/ActionModeHandler;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mTitle:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/ActionModeHandler;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    .line 726
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsVideo:Z

    if-eqz v0, :cond_0

    const v0, 0x7f110004

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->setViewId(I)V

    .line 727
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$6;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/AlbumSetPage$6;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->setActionModeListener(Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;)V

    .line 786
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 787
    iput-boolean v5, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mUseNoItemView:Z

    .line 790
    return-void

    .line 726
    :cond_0
    const v0, 0x7f110001

    goto :goto_0
.end method

.method private isFolderExist(Ljava/lang/String;)Z
    .locals 6
    .parameter "folder"

    .prologue
    const/4 v4, 0x1

    .line 1027
    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    .line 1028
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 1029
    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v5, v2}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    .line 1030
    .local v3, set:Lcom/android/gallery3d/data/MediaSet;
    instance-of v5, v3, Lcom/android/gallery3d/data/LocalAlbum;

    if-eqz v5, :cond_1

    .line 1031
    check-cast v3, Lcom/android/gallery3d/data/LocalAlbum;

    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v3}, Lcom/android/gallery3d/data/LocalAlbum;->getDirectory()Ljava/lang/String;

    move-result-object v1

    .line 1032
    .local v1, dir:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1042
    .end local v1           #dir:Ljava/lang/String;
    :cond_0
    :goto_1
    return v4

    .line 1035
    .restart local v3       #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_1
    instance-of v5, v3, Lcom/android/gallery3d/data/LocalMergeAlbum;

    if-eqz v5, :cond_2

    .line 1036
    check-cast v3, Lcom/android/gallery3d/data/LocalMergeAlbum;

    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v3}, Lcom/android/gallery3d/data/LocalMergeAlbum;->getDirectory()Ljava/lang/String;

    move-result-object v1

    .line 1037
    .restart local v1       #dir:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1028
    .end local v1           #dir:Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1042
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private onDown(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setPressedIndex(I)V

    .line 425
    return-void
.end method

.method private onDragEnd()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1591
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDelayUpdate:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1592
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setDragItemPath(Lcom/android/gallery3d/data/Path;)V

    .line 1593
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->getView()Landroid/view/View;

    move-result-object v0

    .line 1594
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 1595
    invoke-virtual {v0}, Landroid/view/View;->releaseDragViewSurface()V

    .line 1596
    iput-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDragBuilder:Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;

    .line 1597
    return-void
.end method

.method private onDragStarted(Lcom/android/gallery3d/data/Path;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setDragItemPath(Lcom/android/gallery3d/data/Path;)V

    .line 1601
    return-void
.end method

.method private onUp(Z)V
    .locals 2
    .parameter "followedByLongPress"

    .prologue
    .line 428
    if-eqz p1, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setPressedIndex(I)V

    .line 434
    :goto_0
    return-void

    .line 432
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

    .line 298
    iget-boolean v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    if-nez v2, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    .line 301
    if-eqz v2, :cond_0

    .line 303
    instance-of v3, v2, Lcom/android/gallery3d/data/FolderIconAlbum;

    if-eqz v3, :cond_2

    .line 304
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->showNewFolderDlg()V

    goto :goto_0

    .line 306
    :cond_2
    instance-of v3, v2, Lcom/android/gallery3d/data/FavoriteIconAlbum;

    if-eqz v3, :cond_6

    .line 309
    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->getmHasCheckVersion()Z

    move-result v2

    if-nez v2, :cond_4

    .line 310
    invoke-static {v1}, Lcom/android/gallery3d/app/VideoGallery;->setmHasCheckVersion(Z)V

    .line 311
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/video/client/util/CommonUtil;->ifNeedForceUpdate(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 312
    const-string v2, "systemAppsUpdate"

    .line 313
    const-string v3, "apps"

    .line 314
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 315
    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 316
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.android.gallery3d"

    aput-object v2, v1, v0

    invoke-virtual {v4, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    const/high16 v0, 0x400

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 318
    const-string v0, "com.meizu.mstore"

    const-string v1, "com.meizu.mstore.MStoreMainPlusActivity"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 320
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 323
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/video/client/util/CommonUtil;->reportLoginForLS(Landroid/content/Context;)V

    .line 328
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 330
    const-string v2, "tag_favorite"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 331
    if-nez v0, :cond_5

    .line 332
    new-instance v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    invoke-direct {v0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;-><init>()V

    .line 333
    const v2, 0x7f0d0184

    const-string v3, "tag_favorite"

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_0

    .line 335
    :cond_5
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_0

    .line 340
    :cond_6
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->getLockState()I

    move-result v3

    .line 341
    invoke-static {}, Lcom/android/gallery3d/data/MediaObject;->isLockEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    if-lez v3, :cond_7

    and-int/lit8 v3, v3, 0x5

    if-eqz v3, :cond_7

    .line 343
    iput p1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPickedAlbumIndex:I

    .line 344
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/AlbumSetPage;->popupPasswordPad(I)V

    goto/16 :goto_0

    .line 348
    :cond_7
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    .line 350
    new-instance v4, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 351
    new-array v5, v7, [I

    .line 352
    invoke-direct {p0, p1, v5}, Lcom/android/gallery3d/app/AlbumSetPage;->getSlotCenter(I[I)V

    .line 353
    const-string v6, "set-center"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 354
    iget-boolean v5, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    if-eqz v5, :cond_8

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->isLeafAlbum()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 355
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 356
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "album-path"

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 358
    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 359
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 360
    :cond_8
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v5

    if-lez v5, :cond_9

    .line 361
    const-string v0, "media-path"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v0, v2, v1, v4}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 397
    :cond_9
    iget-boolean v5, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetContent:Z

    if-nez v5, :cond_a

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->getSupportedOperations()I

    move-result v2

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_a

    .line 399
    const-string v2, "auto-select-all"

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 401
    :cond_a
    const-string v2, "media-path"

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v2

    .line 405
    const-string v3, "cluster-menu"

    if-nez v2, :cond_b

    move v0, v1

    :cond_b
    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 406
    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 409
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSetWallpaper:Z

    if-eqz v0, :cond_c

    .line 410
    const-string v0, "key-set-wallpaper"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 411
    :cond_c
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v0, v2, v1, v4}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 415
    :pswitch_0
    const-string v0, "key-src-root-dir"

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSrcRootDirPath:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/android/gallery3d/app/AlbumPage;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mSharedSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, v1, v7, v4, v2}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;Lcom/android/gallery3d/ui/SelectionManager;)V

    goto/16 :goto_0

    .line 406
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

    .line 1274
    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v6

    .line 1275
    .local v6, selectedSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1276
    .local v5, selectedCount:I
    if-lez v5, :cond_6

    .line 1277
    const/4 v1, 0x0

    .line 1278
    .local v1, customFolderCount:I
    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v8, Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    .line 1279
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

    .line 1280
    .local v4, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v4}, Lcom/android/gallery3d/data/Path;->getObject()Lcom/android/gallery3d/data/MediaObject;

    move-result-object v3

    .line 1281
    .local v3, object:Lcom/android/gallery3d/data/MediaObject;
    instance-of v8, v3, Lcom/android/gallery3d/data/LocalAlbum;

    if-eqz v8, :cond_2

    move-object v7, v3

    .line 1282
    check-cast v7, Lcom/android/gallery3d/data/LocalAlbum;

    .line 1283
    .local v7, set:Lcom/android/gallery3d/data/LocalAlbum;
    invoke-virtual {v7}, Lcom/android/gallery3d/data/LocalAlbum;->isCustomFolder()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1284
    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getCustomFolder()Lcom/android/gallery3d/data/CustomFolder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/gallery3d/data/LocalAlbum;->getDirectory()Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaType:I

    invoke-virtual {v8, v10, v11}, Lcom/android/gallery3d/data/CustomFolder;->removeFolder(Ljava/lang/String;I)V

    .line 1285
    if-nez p1, :cond_1

    .line 1286
    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8, v4}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 1287
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1289
    .end local v7           #set:Lcom/android/gallery3d/data/LocalAlbum;
    :cond_2
    instance-of v8, v3, Lcom/android/gallery3d/data/LocalMergeAlbum;

    if-eqz v8, :cond_0

    move-object v7, v3

    .line 1290
    check-cast v7, Lcom/android/gallery3d/data/LocalMergeAlbum;

    .line 1291
    .local v7, set:Lcom/android/gallery3d/data/LocalMergeAlbum;
    invoke-virtual {v7}, Lcom/android/gallery3d/data/LocalMergeAlbum;->isCustomFolder()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1292
    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getCustomFolder()Lcom/android/gallery3d/data/CustomFolder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/gallery3d/data/LocalMergeAlbum;->getDirectory()Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaType:I

    invoke-virtual {v8, v10, v11}, Lcom/android/gallery3d/data/CustomFolder;->removeFolder(Ljava/lang/String;I)V

    .line 1293
    if-nez p1, :cond_3

    .line 1294
    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8, v4}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 1295
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1299
    .end local v3           #object:Lcom/android/gallery3d/data/MediaObject;
    .end local v4           #path:Lcom/android/gallery3d/data/Path;
    .end local v7           #set:Lcom/android/gallery3d/data/LocalMergeAlbum;
    :cond_4
    if-eq v1, v5, :cond_5

    .line 1300
    const/4 v8, 0x1

    .line 1305
    .end local v0           #app:Lcom/android/gallery3d/app/GalleryApp;
    .end local v1           #customFolderCount:I
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_1
    return v8

    .line 1301
    .restart local v0       #app:Lcom/android/gallery3d/app/GalleryApp;
    .restart local v1       #customFolderCount:I
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_5
    if-lez v1, :cond_6

    .line 1302
    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v8}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/data/DataManager;->fakeChange()V

    .end local v0           #app:Lcom/android/gallery3d/app/GalleryApp;
    .end local v1           #customFolderCount:I
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_6
    move v8, v9

    .line 1305
    goto :goto_1
.end method

.method private setLoadingBit(I)V
    .locals 1
    .parameter "loadingBit"

    .prologue
    .line 582
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    .line 583
    return-void
.end method

.method private setNoItemViewState(ZZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 795
    if-eqz p1, :cond_3

    .line 796
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsVideo:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0200c5

    .line 797
    :goto_0
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsVideo:Z

    if-eqz v1, :cond_2

    const v1, 0x7f0a01ec

    .line 802
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNoItemView:Lcom/android/gallery3d/ui/NoItemView;

    .line 803
    new-instance v2, Lcom/android/gallery3d/ui/NoItemView;

    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-direct {v2, v3, v0, v1}, Lcom/android/gallery3d/ui/NoItemView;-><init>(Lcom/android/gallery3d/app/GalleryContext;II)V

    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNoItemView:Lcom/android/gallery3d/ui/NoItemView;

    .line 805
    if-eqz p2, :cond_0

    .line 806
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->removeAllComponents()V

    .line 807
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNoItemView:Lcom/android/gallery3d/ui/NoItemView;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 808
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mUseNoItemView:Z

    .line 809
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->requestLayout()V

    .line 810
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 812
    :cond_0
    return-void

    .line 796
    :cond_1
    const v0, 0x7f0200c4

    goto :goto_0

    .line 797
    :cond_2
    const v1, 0x7f0a01eb

    goto :goto_1

    .line 799
    :cond_3
    const v0, 0x7f0200fb

    .line 800
    const v1, 0x7f0a01ed

    goto :goto_1
.end method

.method private showDetails()V
    .locals 4

    .prologue
    .line 1154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    .line 1155
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    if-nez v0, :cond_0

    .line 1156
    new-instance v0, Lcom/android/gallery3d/ui/DetailsHelper;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsSource:Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/DetailsHelper;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    .line 1157
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$8;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/AlbumSetPage$8;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/DetailsHelper;->setCloseListener(Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;)V

    .line 1164
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->show()V

    .line 1165
    return-void
.end method

.method private showNewFolderDlg()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1320
    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$10;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/AlbumSetPage$10;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    .line 1338
    new-instance v2, Lcom/android/gallery3d/app/AlbumSetPage$11;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/AlbumSetPage$11;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    .line 1372
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x1030317

    invoke-direct {v3, v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1374
    const v0, 0x7f0a01e6

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1375
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f04001d

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1377
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1378
    const v4, 0x7f0d0059

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNameEditor:Landroid/widget/EditText;

    .line 1379
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNameEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1381
    const v0, 0x7f0a013a

    invoke-virtual {v3, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1382
    const v0, 0x7f0a0148

    invoke-virtual {v3, v0, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1383
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1384
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mButtonNewFolderOk:Landroid/widget/Button;

    .line 1385
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mButtonNewFolderOk:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1386
    return-void
.end method


# virtual methods
.method public doCluster(I)V
    .locals 3
    .parameter

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 497
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/FilterUtils;->switchClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 498
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 499
    const-string v2, "media-path"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v0, "selected-cluster"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 501
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 502
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    if-eqz v0, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->hideDetails()V

    .line 258
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 256
    :cond_1
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4
    .parameter "data"
    .parameter "restoreState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 506
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 507
    const-string v1, "set-title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mTitle:Ljava/lang/String;

    .line 508
    const-string v1, "key-src-root-dir"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSrcRootDirPath:Ljava/lang/String;

    .line 509
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getIntentType()Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    move-result-object v1

    iget v1, v1, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mType:I

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsVideo:Z

    .line 510
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->initializeViews()V

    .line 511
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->initializeData(Landroid/os/Bundle;)V

    .line 512
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 513
    .local v0, context:Landroid/content/Context;
    const-string v1, "get-content"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetContent:Z

    .line 514
    const-string v1, "get-album"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    .line 515
    const-string v1, "key-set-wallpaper"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSetWallpaper:Z

    .line 517
    new-instance v1, Lcom/android/gallery3d/app/EyePosition;

    invoke-direct {v1, v0, p0}, Lcom/android/gallery3d/app/EyePosition;-><init>(Landroid/content/Context;Lcom/android/gallery3d/app/EyePosition$EyePositionListener;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;

    .line 518
    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/app/AlbumSetPage$1;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsSource:Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;

    .line 520
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    .line 521
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/GalleryActionBar;->useMzTitleLayout(Z)V

    .line 524
    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$3;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/app/AlbumSetPage$3;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    .line 542
    return-void

    .end local v0           #context:Landroid/content/Context;
    :cond_0
    move v1, v3

    .line 509
    goto :goto_0
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x1

    .line 816
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 817
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getIntentType()Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    move-result-object v1

    .line 818
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 819
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    if-eqz v3, :cond_0

    .line 820
    iget v3, v1, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mType:I

    if-ne v3, v4, :cond_1

    .line 864
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(Ljava/lang/String;)V

    .line 866
    :cond_0
    return v4

    .line 824
    :cond_1
    iget v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaType:I

    if-eqz v3, :cond_3

    .line 825
    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 826
    iget v3, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    packed-switch v3, :pswitch_data_0

    .line 829
    const v3, 0x7f110006

    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 831
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSetWallpaper:Z

    if-nez v0, :cond_2

    iget v0, v1, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mType:I

    if-eqz v0, :cond_3

    .line 832
    :cond_2
    const v0, 0x7f0d0196

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 859
    :cond_3
    :goto_1
    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 860
    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setActionModeHeaderHidden(Z)V

    .line 861
    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setEnabledBackWhenOverlay(Z)V

    goto :goto_0

    .line 850
    :pswitch_0
    const v1, 0x7f110008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 852
    const v0, 0x7f0d0197

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 826
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 614
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onDestroy()V

    .line 615
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->destroy()V

    .line 616
    return-void
.end method

.method public onEyePositionChanged(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->lockRendering()V

    .line 242
    iput p1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mX:F

    .line 243
    iput p2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mY:F

    .line 244
    iput p3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mZ:F

    .line 245
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->unlockRendering()V

    .line 246
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 247
    return-void
.end method

.method public onHudViewClicked(ILjava/lang/Object;)Z
    .locals 2
    .parameter "id"
    .parameter "arg"

    .prologue
    .line 1247
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 1248
    .local v0, context:Landroid/content/Context;
    packed-switch p1, :pswitch_data_0

    .line 1270
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v1, 0x1

    return v1

    .line 1252
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->onBackPressed()V

    goto :goto_0

    .line 1255
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/AlbumSetPage;->sharedByEmail(Landroid/content/Context;)Z

    goto :goto_0

    .line 1258
    :pswitch_3
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/AlbumSetPage;->removeCustomFolder(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1259
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/app/AlbumSetPage;->deleteSelectedObject(ILjava/lang/Object;)V

    goto :goto_0

    .line 1263
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->onHudViewSelect()V

    goto :goto_0

    .line 1266
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->onHudViewShare(I)V

    goto :goto_0

    .line 1248
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
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0a013a

    const/4 v4, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 871
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 872
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 970
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/AlbumSetPage;->popupPasswordPadIfNeeded(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 971
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedMenuItem:Landroid/view/MenuItem;

    move v0, v1

    .line 978
    :goto_0
    return v0

    .line 874
    :sswitch_0
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 875
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    move v0, v1

    .line 876
    goto :goto_0

    .line 878
    :sswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 879
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    move v0, v1

    .line 880
    goto :goto_0

    .line 882
    :sswitch_2
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 883
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    if-eqz v0, :cond_0

    .line 884
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->hideDetails()V

    :goto_1
    move v0, v1

    .line 893
    goto :goto_0

    .line 886
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->showDetails()V

    goto :goto_1

    .line 889
    :cond_1
    const v3, 0x7f0a016d

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 915
    :sswitch_3
    new-instance v3, Landroid/content/Intent;

    const-string v0, "com.meizu.action.CHOOSE_MULTI_FILE"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 916
    const-string v4, "botton_text"

    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 917
    const-string v0, "select_dir"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 918
    const-string v0, "filterAllFile"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 919
    const/high16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 920
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    .line 921
    goto :goto_0

    .line 924
    :sswitch_4
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/AlbumSetPage;->popupPasswordPadIfNeeded(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 925
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedMenuItem:Landroid/view/MenuItem;

    move v0, v1

    .line 926
    goto :goto_0

    .line 928
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->hasCustomFolderSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 930
    const v2, 0x1030317

    .line 931
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 932
    const v3, 0x7f04006d

    invoke-virtual {v0, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 934
    new-instance v3, Lcom/android/gallery3d/app/AlbumSetPage$7;

    invoke-direct {v3, p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage$7;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;Landroid/view/MenuItem;)V

    .line 956
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v5}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0a01e5

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0a0148

    invoke-virtual {v0, v2, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRemoveFileDlg:Landroid/app/AlertDialog;

    .line 962
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRemoveFileDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v0, v1

    .line 963
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 978
    goto/16 :goto_0

    .line 872
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d0192 -> :sswitch_4
        0x7f0d0194 -> :sswitch_1
        0x7f0d0196 -> :sswitch_3
        0x7f0d01aa -> :sswitch_2
        0x7f0d01af -> :sswitch_0
    .end sparse-switch
.end method

.method public onLongTap(III)V
    .locals 12
    .parameter "slotIndex"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v11, 0x0

    .line 437
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetContent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSetWallpaper:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mState:I

    if-eqz v0, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v9

    .line 439
    .local v9, set:Lcom/android/gallery3d/data/MediaSet;
    if-eqz v9, :cond_0

    .line 440
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 441
    invoke-virtual {v9}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v7

    .line 442
    .local v7, path:Lcom/android/gallery3d/data/Path;
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, v7}, Lcom/android/gallery3d/ui/SelectionManager;->isItemSelected(Lcom/android/gallery3d/data/Path;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 443
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, v7}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 445
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsSource:Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->findIndex(I)I

    .line 446
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 448
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->initDragBitmap()V

    .line 449
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->getAlbumSetEntry(I)Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v2

    .line 450
    .local v2, entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/SlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v8

    .line 451
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

    .line 452
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->getView()Landroid/view/View;

    move-result-object v10

    .line 453
    .local v10, view:Landroid/view/View;
    new-instance v0, Lcom/android/gallery3d/app/AlbumSetPage$2;

    invoke-direct {v0, p0, v7}, Lcom/android/gallery3d/app/AlbumSetPage$2;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/data/Path;)V

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 468
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDragBuilder:Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;

    const/4 v1, 0x0

    invoke-virtual {v10, v11, v0, v11, v1}, Landroid/view/View;->startDragMz(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 587
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onPause()V

    .line 588
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    .line 589
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->pause()V

    .line 590
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->pause()V

    .line 591
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 593
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->pause()V

    .line 594
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 598
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/EyePosition;->pause()V

    .line 599
    invoke-static {}, Lcom/android/gallery3d/ui/DetailsHelper;->pause()V

    .line 604
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 606
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 607
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/AlbumSetPage;->clearLoadingBit(I)V

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 610
    return-void

    .line 596
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

    .line 620
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onResume()V

    .line 621
    iput-boolean v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    .line 622
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/AlbumSetPage;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 625
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/AlbumSetPage;->setLoadingBit(I)V

    .line 626
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->resume()V

    .line 627
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->resume()V

    .line 629
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->resume()V

    .line 630
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/EyePosition;->resume()V

    .line 631
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->resume()V

    .line 635
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mInitialSynced:Z

    if-nez v1, :cond_0

    .line 636
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/AlbumSetPage;->setLoadingBit(I)V

    .line 637
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/data/MediaSet;->requestSync(Lcom/android/gallery3d/data/MediaSet$SyncListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 640
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 641
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 642
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 643
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 644
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 645
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 646
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 647
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/GalleryActionBar;->show()V

    .line 649
    :cond_1
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsVideo:Z

    if-nez v1, :cond_2

    .line 650
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 652
    :cond_2
    return-void
.end method

.method public onSelectionChange(Lcom/android/gallery3d/data/Path;Z)V
    .locals 2
    .parameter "path"
    .parameter "selected"

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SelectionButton;->setCurrentCount(I)V

    .line 1144
    :cond_0
    return-void
.end method

.method public onSelectionModeChange(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 1107
    packed-switch p1, :pswitch_data_0

    .line 1134
    :goto_0
    return-void

    .line 1110
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->startActionMode()Landroid/view/ActionMode;

    goto :goto_0

    .line 1117
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->finishActionMode()V

    .line 1121
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SelectionButton;->setAllSelected(Z)V

    .line 1122
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 1127
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 1128
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 1130
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SelectionButton;->setAllSelected(Z)V

    goto :goto_0

    .line 1107
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
    .line 271
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    if-nez v1, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 274
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    .line 275
    .local v0, targetSet:Lcom/android/gallery3d/data/MediaSet;
    if-eqz v0, :cond_0

    .line 276
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 277
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0

    .line 280
    .end local v0           #targetSet:Lcom/android/gallery3d/data/MediaSet;
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setPressedIndex(I)V

    .line 281
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setPressedUp()V

    .line 282
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

    .line 983
    packed-switch p1, :pswitch_data_0

    .line 1024
    :cond_0
    :goto_0
    return-void

    .line 985
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->startRisingAnimation()V

    goto :goto_0

    .line 989
    :pswitch_1
    if-ne p2, v5, :cond_0

    .line 990
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaType:I

    if-eqz v0, :cond_0

    .line 991
    const-string v0, "folderList"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 992
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/AlbumSetPage;->addCustomFolder(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 998
    :pswitch_2
    if-ne p2, v5, :cond_0

    .line 999
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1004
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/app/AlbumSetPage;->onPasswordPadReturn(I)V

    .line 1005
    if-ne p2, v5, :cond_1

    .line 1006
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPickedAlbumIndex:I

    if-ltz v0, :cond_1

    .line 1007
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPickedAlbumIndex:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1010
    :cond_1
    iput v5, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPickedAlbumIndex:I

    goto :goto_0

    .line 1014
    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/app/AlbumSetPage;->onPasswordPadReturn(I)V

    .line 1015
    if-ne p2, v5, :cond_2

    .line 1016
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 1017
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedMenuItem:Landroid/view/MenuItem;

    invoke-virtual {v0, v2, v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 1020
    :cond_2
    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedMenuItem:Landroid/view/MenuItem;

    goto :goto_0

    .line 983
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
    .line 1169
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 1170
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

    .line 1173
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$9;

    invoke-direct {v1, p0, p2}, Lcom/android/gallery3d/app/AlbumSetPage$9;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1191
    return-void
.end method
