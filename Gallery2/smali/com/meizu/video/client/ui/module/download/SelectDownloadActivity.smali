.class public Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;
.super Landroid/app/Activity;
.source "SelectDownloadActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$SelectdownloadTask;,
        Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$NetworkDialogListener;,
        Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;
    }
.end annotation


# instance fields
.field private final FRESH_CURRENT_ACTIONBAR_STYLE:I

.field private final FRESH_CURRENT_PAGE:I

.field private TAG:Ljava/lang/String;

.field itemDragListener:Landroid/widget/AbsListView$OnItemDragListener;

.field private mActionCallback:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;

.field private mBar:Landroid/app/ActionBar;

.field private mBeginDownload:Z

.field private mCanDownloadNum:I

.field private mChanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

.field private mChanelprogramdetailEpisodesVarietyDiverImage:Landroid/widget/ImageView;

.field private mChanelprogramdetailEpisodesVarietyListview:Landroid/widget/ListView;

.field private mChanelprogramdetailEpisodesVarietyOperation:Landroid/widget/LinearLayout;

.field private mChanelprogramdetailEpisodesVarietyTitle:Landroid/widget/TextView;

.field private mChannelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

.field private mCheclItemIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCountNum:I

.field private mCurrentStartListPosition:I

.field private mDownloadDataChange:Z

.field private mDownloadMenu:Landroid/view/MenuItem;

.field private mDownloadMenuActionMode:Landroid/view/MenuItem;

.field private mDownloadObserver:Landroid/database/ContentObserver;

.field private mDownloandService:Landroid/net/DownloadService;

.field private mEpisodesListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/EpisodesEntity;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private mIsLoading:Z

.field private mLoader:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$SelectdownloadTask;

.field mOnSelectDownloadScroll:Landroid/widget/AbsListView$OnScrollListener;

.field private mRes:Landroid/content/res/Resources;

.field private mSelectButton:Lcom/meizu/widget/SelectionButton;

.field private mSelectButtonMenu:Lcom/meizu/widget/SelectionButton;

.field private mSelectButtonMenuActionMode:Lcom/meizu/widget/SelectionButton;

.field private mSelectMenu:Landroid/view/MenuItem;

.field private mSelectMenuActionMode:Landroid/view/MenuItem;

.field private mStyle:Ljava/lang/String;

.field private mTvListType:Z

.field private mVideoDataChange:Z

.field private mVideoObserver:Landroid/database/ContentObserver;

.field private mVideoQualityType:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    const-string v0, "SelectDownloadActivity"

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->TAG:Ljava/lang/String;

    .line 68
    const-string v0, "2"

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mStyle:Ljava/lang/String;

    .line 78
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChannelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    .line 82
    new-instance v0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;-><init>(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mActionCallback:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;

    .line 84
    iput v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I

    .line 86
    iput v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mVideoQualityType:I

    .line 88
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenu:Landroid/view/MenuItem;

    .line 89
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenu:Landroid/view/MenuItem;

    .line 93
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenuActionMode:Landroid/view/MenuItem;

    .line 94
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenuActionMode:Landroid/view/MenuItem;

    .line 100
    iput-boolean v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mBeginDownload:Z

    .line 102
    iput-boolean v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mTvListType:Z

    .line 104
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->FRESH_CURRENT_ACTIONBAR_STYLE:I

    .line 106
    iput v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->FRESH_CURRENT_PAGE:I

    .line 108
    iput v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCurrentStartListPosition:I

    .line 114
    iput-boolean v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mIsLoading:Z

    .line 116
    iput v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCanDownloadNum:I

    .line 807
    new-instance v0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$4;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$4;-><init>(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->itemDragListener:Landroid/widget/AbsListView$OnItemDragListener;

    .line 836
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloandService:Landroid/net/DownloadService;

    .line 846
    new-instance v0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$5;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$5;-><init>(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mHandler:Landroid/os/Handler;

    .line 891
    new-instance v0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$6;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$6;-><init>(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mOnSelectDownloadScroll:Landroid/widget/AbsListView$OnScrollListener;

    .line 913
    iput-boolean v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mVideoDataChange:Z

    .line 914
    iput-boolean v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadDataChange:Z

    .line 916
    new-instance v0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$7;-><init>(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mVideoObserver:Landroid/database/ContentObserver;

    .line 929
    new-instance v0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$8;-><init>(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadObserver:Landroid/database/ContentObserver;

    .line 998
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCurrentStartListPosition:I

    return v0
.end method

.method static synthetic access$1002(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCurrentStartListPosition:I

    return p1
.end method

.method static synthetic access$102(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenuActionMode:Landroid/view/MenuItem;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mTvListType:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mIsLoading:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChannelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;)Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChannelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Landroid/widget/GridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mVideoDataChange:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadDataChange:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->getAllDownLoadVideo()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1802(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCanDownloadNum:I

    return p1
.end method

.method static synthetic access$1808(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCanDownloadNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCanDownloadNum:I

    return v0
.end method

.method static synthetic access$1900(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mVideoQualityType:I

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenuActionMode:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$202(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenuActionMode:Landroid/view/MenuItem;

    return-object p1
.end method

.method static synthetic access$300(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Lcom/meizu/widget/SelectionButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectButtonMenuActionMode:Lcom/meizu/widget/SelectionButton;

    return-object v0
.end method

.method static synthetic access$302(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;Lcom/meizu/widget/SelectionButton;)Lcom/meizu/widget/SelectionButton;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectButtonMenuActionMode:Lcom/meizu/widget/SelectionButton;

    return-object p1
.end method

.method static synthetic access$400(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I

    return v0
.end method

.method static synthetic access$502(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I

    return p1
.end method

.method static synthetic access$508(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I

    return v0
.end method

.method static synthetic access$510(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I

    return v0
.end method

.method static synthetic access$600(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCheclItemIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCheclItemIds:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelprogramdetailEpisodesVarietyListview:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;I[J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->actionItemClick(I[J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mBeginDownload:Z

    return v0
.end method

.method private varargs actionItemClick(I[J)Z
    .locals 4
    .parameter "id"
    .parameter "items"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 615
    packed-switch p1, :pswitch_data_0

    .line 622
    :goto_0
    return v0

    .line 617
    :pswitch_0
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenu:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 618
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mChanelprogramdetailEpisodesVarietyListview.getCheckedItemCount()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelprogramdetailEpisodesVarietyListview:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    invoke-virtual {p0, v3, v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadVideo(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const/4 v0, 0x1

    goto :goto_0

    .line 615
    :pswitch_data_0
    .packed-switch 0x7f0d01b8
        :pswitch_0
    .end packed-switch
.end method

.method private getAllDownLoadVideo()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 946
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 950
    :try_start_0
    sget-object v1, Lcom/meizu/video/client/common/Constant$DataSourceUri;->sVideoUri:Landroid/net/Uri;

    .line 951
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v0

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/Download/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_data like \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 955
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 956
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 957
    if-eqz v6, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 958
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 959
    const-string v1, "_data"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 960
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 961
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 962
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 963
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 964
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 988
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 990
    :goto_1
    if-eqz v0, :cond_1

    .line 991
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 995
    :cond_1
    return-object v7

    .line 971
    :cond_2
    :try_start_2
    sget-object v1, Lcom/meizu/video/client/common/Constant$DataSourceUri;->sDownloadUri:Landroid/net/Uri;

    .line 972
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "hint"

    aput-object v4, v2, v3

    .line 973
    const-string v3, " status != \'200\' AND status < \'400\' "

    .line 974
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 975
    if-eqz v0, :cond_5

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    .line 976
    :cond_3
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 977
    const-string v1, "hint"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 978
    if-eqz v1, :cond_3

    const-string v2, "file:///mnt/sdcard/Video/Download/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 979
    const-string v2, "file:///mnt/sdcard/Video/Download/"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 980
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 981
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 982
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 988
    :catch_1
    move-exception v1

    goto :goto_1

    .line 990
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v6, :cond_4

    .line 991
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 990
    :cond_4
    throw v0

    :cond_5
    if-eqz v0, :cond_1

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_4

    .line 988
    :catch_2
    move-exception v0

    move-object v0, v6

    goto :goto_1
.end method

.method private initData(I)V
    .locals 4
    .parameter "freshType"

    .prologue
    const/4 v2, 0x1

    .line 1070
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mIsLoading:Z

    if-nez v0, :cond_0

    .line 1071
    iput-boolean v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mIsLoading:Z

    .line 1072
    new-instance v0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$SelectdownloadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$SelectdownloadTask;-><init>(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$1;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mLoader:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$SelectdownloadTask;

    .line 1073
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mLoader:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$SelectdownloadTask;

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$SelectdownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1075
    :cond_0
    return-void
.end method

.method private registerObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 904
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/meizu/video/client/common/Constant$DataSourceUri;->sVideoUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mVideoObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 905
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/meizu/video/client/common/Constant$DataSourceUri;->sDownloadUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 906
    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mVideoObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 910
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 911
    return-void
.end method


# virtual methods
.method public beginDownLoadAndReturn()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 644
    iget-object v7, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenu:Landroid/view/MenuItem;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 645
    const/4 v5, 0x0

    .line 646
    .local v5, selectdownNum:I
    iget-object v7, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCheclItemIds:Ljava/util/ArrayList;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCheclItemIds:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 647
    iput-boolean v10, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mBeginDownload:Z

    .line 648
    const-string v6, ""

    .line 649
    .local v6, videoUrl:Ljava/lang/String;
    iget-object v7, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCheclItemIds:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v3, v7

    .line 650
    .local v3, item:J
    iget-object v7, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mCheclItemIds item="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v7, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-ltz v7, :cond_0

    iget-object v7, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    int-to-long v7, v7

    cmp-long v7, v3, v7

    if-gez v7, :cond_0

    .line 652
    iget-object v7, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    long-to-int v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    .line 653
    .local v0, episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    if-eqz v0, :cond_0

    .line 654
    add-int/lit8 v5, v5, 0x1

    .line 655
    iget v7, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mVideoQualityType:I

    invoke-static {v0, v7}, Lcom/meizu/video/client/util/CommonUtil;->getEpisodesVideoDownLoadUrl(Lcom/meizu/video/client/ui/entity/EpisodesEntity;I)Ljava/lang/String;

    move-result-object v6

    .line 657
    if-eqz v6, :cond_1

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 658
    :cond_1
    invoke-static {v0, v10}, Lcom/meizu/video/client/util/CommonUtil;->getEpisodesVideoDownLoadUrl(Lcom/meizu/video/client/ui/entity/EpisodesEntity;I)Ljava/lang/String;

    move-result-object v6

    .line 662
    :cond_2
    iget-object v7, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloandService:Landroid/net/DownloadService;

    if-eqz v7, :cond_3

    .line 664
    :try_start_0
    iget-object v7, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloandService:Landroid/net/DownloadService;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/meizu/video/client/util/CommonUtil;->getFullFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/net/DownloadService;->downloadByPath(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "videoUrl="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 672
    .end local v0           #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    .end local v3           #item:J
    :cond_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 673
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "selectdownNum"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 674
    const/4 v7, -0x1

    invoke-virtual {p0, v7, v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->setResult(ILandroid/content/Intent;)V

    .line 675
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->finish()V

    .line 677
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v6           #videoUrl:Ljava/lang/String;
    :cond_5
    return-void

    .line 665
    .restart local v0       #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #item:J
    .restart local v6       #videoUrl:Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public bindService()V
    .locals 2

    .prologue
    .line 839
    new-instance v0, Landroid/net/DownloadService;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/DownloadService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloandService:Landroid/net/DownloadService;

    .line 840
    return-void
.end method

.method public checkAllOrUnall()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 752
    iget-boolean v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mTvListType:Z

    if-eqz v3, :cond_5

    .line 753
    iget v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I

    iget v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCanDownloadNum:I

    if-ne v3, v4, :cond_1

    .line 754
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCheclItemIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 755
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    .line 756
    .local v0, episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    invoke-virtual {v0, v5}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setSelected(Z)V

    goto :goto_0

    .line 758
    .end local v0           #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    :cond_0
    iput v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I

    .line 759
    iget v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I

    invoke-virtual {p0, v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->showOrHideCustomView(I)V

    .line 760
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->invalidateViews()V

    .line 805
    :goto_1
    return-void

    .line 762
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    const/4 v1, 0x0

    .line 763
    .local v1, i:I
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    .line 764
    .restart local v0       #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->isExistOrDownload()Z

    move-result v3

    if-nez v3, :cond_2

    .line 765
    invoke-virtual {v0, v6}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setSelected(Z)V

    .line 766
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCheclItemIds:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 767
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCheclItemIds:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 772
    .end local v0           #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    :cond_4
    iget v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCanDownloadNum:I

    iput v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I

    .line 773
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->invalidateViews()V

    .line 774
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectButton:Lcom/meizu/widget/SelectionButton;

    iget v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I

    invoke-virtual {v3, v4}, Lcom/meizu/widget/SelectionButton;->setCurrentCount(I)V

    .line 775
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectButtonMenu:Lcom/meizu/widget/SelectionButton;

    iget v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I

    invoke-virtual {v3, v4}, Lcom/meizu/widget/SelectionButton;->setCurrentCount(I)V

    goto :goto_1

    .line 778
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_5
    iget v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I

    iget v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCanDownloadNum:I

    if-ne v3, v4, :cond_7

    .line 779
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCheclItemIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 780
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    .line 781
    .restart local v0       #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    invoke-virtual {v0, v5}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setSelected(Z)V

    goto :goto_3

    .line 783
    .end local v0           #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    :cond_6
    iput v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I

    .line 784
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelprogramdetailEpisodesVarietyListview:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->finishMultiChoice()V

    .line 801
    :goto_4
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectButtonMenuActionMode:Lcom/meizu/widget/SelectionButton;

    iget v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I

    invoke-virtual {v3, v4}, Lcom/meizu/widget/SelectionButton;->setCurrentCount(I)V

    .line 802
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectButtonMenu:Lcom/meizu/widget/SelectionButton;

    iget v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I

    invoke-virtual {v3, v4}, Lcom/meizu/widget/SelectionButton;->setCurrentCount(I)V

    .line 803
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectButton:Lcom/meizu/widget/SelectionButton;

    iget v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I

    invoke-virtual {v3, v4}, Lcom/meizu/widget/SelectionButton;->setCurrentCount(I)V

    goto/16 :goto_1

    .line 786
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_7
    const/4 v1, 0x0

    .line 787
    .restart local v1       #i:I
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_8
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    .line 788
    .restart local v0       #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->isExistOrDownload()Z

    move-result v3

    if-nez v3, :cond_8

    .line 789
    invoke-virtual {v0, v6}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setSelected(Z)V

    .line 790
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCheclItemIds:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 791
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCheclItemIds:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 797
    .end local v0           #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    :cond_a
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelprogramdetailEpisodesVarietyListview:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->checkedAll()V

    .line 798
    iget v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCanDownloadNum:I

    iput v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I

    goto :goto_4
.end method

.method public downloadVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "url"

    .prologue
    .line 682
    invoke-static {p0}, Lcom/meizu/video/client/util/CommonUtil;->checkAlertDialogType(Landroid/content/Context;)I

    move-result v0

    .line 683
    .local v0, aleartDialogType:I
    if-nez v0, :cond_0

    .line 684
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->beginDownLoadAndReturn()V

    .line 688
    :goto_0
    return-void

    .line 686
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->showNetworkAlertDialog(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public initView()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 181
    new-instance v1, Lcom/meizu/widget/SelectionButton;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/meizu/widget/SelectionButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectButton:Lcom/meizu/widget/SelectionButton;

    .line 182
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 183
    .local v0, lp:Landroid/app/ActionBar$LayoutParams;
    const/16 v1, 0x15

    iput v1, v0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 184
    const/4 v1, 0x5

    iput v1, v0, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    .line 185
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectButton:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v1, v0}, Lcom/meizu/widget/SelectionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectButton:Lcom/meizu/widget/SelectionButton;

    new-instance v2, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$1;

    invoke-direct {v2, p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$1;-><init>(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)V

    invoke-virtual {v1, v2}, Lcom/meizu/widget/SelectionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 610
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 612
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x1

    .line 320
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 322
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 323
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 325
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 120
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mRes:Landroid/content/res/Resources;

    .line 124
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mBar:Landroid/app/ActionBar;

    .line 125
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setEnabledBackWhenOverlay(Z)V

    .line 126
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mBar:Landroid/app/ActionBar;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 127
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mBar:Landroid/app/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 128
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setActionModeHeaderHidden(Z)V

    .line 129
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->useMzTitleLayout(Z)V

    .line 130
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mBar:Landroid/app/ActionBar;

    const v2, 0x7f0a000b

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 131
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mBar:Landroid/app/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 136
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 138
    const-string v1, "style"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    const-string v1, "style"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mStyle:Ljava/lang/String;

    .line 140
    const-string v1, "1"

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mStyle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mTvListType:Z

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->bindService()V

    .line 146
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->initView()V

    .line 148
    iget-boolean v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mTvListType:Z

    if-eqz v1, :cond_1

    .line 149
    const v1, 0x7f040015

    invoke-virtual {p0, v1}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->setContentView(I)V

    .line 150
    const v1, 0x7f0d0038

    invoke-virtual {p0, v1}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    .line 151
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    const/high16 v2, 0x7f08

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setSelector(I)V

    .line 173
    :goto_0
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->registerObserver()V

    .line 175
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->initData(I)V

    .line 177
    return-void

    .line 153
    :cond_1
    const v1, 0x7f040017

    invoke-virtual {p0, v1}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->setContentView(I)V

    .line 154
    const v1, 0x7f0d003c

    invoke-virtual {p0, v1}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelprogramdetailEpisodesVarietyTitle:Landroid/widget/TextView;

    .line 155
    const v1, 0x7f0d003e

    invoke-virtual {p0, v1}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelprogramdetailEpisodesVarietyListview:Landroid/widget/ListView;

    .line 157
    const v1, 0x7f0d003f

    invoke-virtual {p0, v1}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelprogramdetailEpisodesVarietyOperation:Landroid/widget/LinearLayout;

    .line 159
    const v1, 0x7f0d003d

    invoke-virtual {p0, v1}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelprogramdetailEpisodesVarietyDiverImage:Landroid/widget/ImageView;

    .line 161
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelprogramdetailEpisodesVarietyTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelprogramdetailEpisodesVarietyOperation:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 163
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelprogramdetailEpisodesVarietyDiverImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelprogramdetailEpisodesVarietyListview:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mActionCallback:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 166
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelprogramdetailEpisodesVarietyListview:Landroid/widget/ListView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 167
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelprogramdetailEpisodesVarietyListview:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setEnableDragSelection(Z)V

    .line 168
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelprogramdetailEpisodesVarietyListview:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->itemDragListener:Landroid/widget/AbsListView$OnItemDragListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemDragListener(Landroid/widget/AbsListView$OnItemDragListener;)V

    .line 170
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelprogramdetailEpisodesVarietyListview:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mOnSelectDownloadScroll:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 209
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 210
    .local v0, menuInflater:Landroid/view/MenuInflater;
    const v1, 0x7f11000a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 211
    const v1, 0x7f0d01b8

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenu:Landroid/view/MenuItem;

    .line 213
    const v1, 0x7f0d01b9

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenu:Landroid/view/MenuItem;

    .line 215
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenu:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/widget/SelectionButton;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectButtonMenu:Lcom/meizu/widget/SelectionButton;

    .line 217
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectButtonMenu:Lcom/meizu/widget/SelectionButton;

    new-instance v2, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$2;

    invoke-direct {v2, p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$2;-><init>(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)V

    invoke-virtual {v1, v2}, Lcom/meizu/widget/SelectionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenu:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 224
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenu:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 225
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenu:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 226
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenu:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 229
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->unBindService()V

    .line 828
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->unregisterObserver()V

    .line 829
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mLoader:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$SelectdownloadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mLoader:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$SelectdownloadTask;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$SelectdownloadTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 830
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mLoader:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$SelectdownloadTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$SelectdownloadTask;->cancel(Z)Z

    .line 832
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 833
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v4, 0x7f0d003a

    .line 466
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mBeginDownload="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mBeginDownload:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p3, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mBeginDownload:Z

    if-eqz v1, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCheclItemIds:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 471
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCheclItemIds:Ljava/util/ArrayList;

    .line 473
    :cond_2
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    .line 474
    .local v0, episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->isExistOrDownload()Z

    move-result v1

    if-nez v1, :cond_0

    .line 475
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->isSelected()Z

    move-result v1

    if-nez v1, :cond_3

    .line 476
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f02002a

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 477
    iget v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I

    .line 478
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setSelected(Z)V

    .line 479
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCheclItemIds:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    :goto_1
    iget v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I

    invoke-virtual {p0, v1}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->showOrHideCustomView(I)V

    goto :goto_0

    .line 481
    :cond_3
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f020028

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 482
    iget v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I

    .line 483
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setSelected(Z)V

    .line 484
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCheclItemIds:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 460
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onItemLongClick position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4
    .parameter "featureId"
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    .line 630
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onMenuItemSelected item.getItemId()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " featureId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 639
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 633
    :pswitch_0
    invoke-virtual {p0, v3, v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadVideo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 631
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d01b8
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 197
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 199
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mVideoDataChange:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadDataChange:Z

    if-eqz v0, :cond_1

    .line 200
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->initData(I)V

    .line 203
    :cond_1
    return-void
.end method

.method public showEpisodesView()V
    .locals 12

    .prologue
    const v11, 0x7f09009e

    const v10, 0x7f09009d

    const/high16 v9, 0x200

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 233
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChannelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    if-nez v5, :cond_0

    .line 234
    new-instance v5, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6, v7}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;-><init>(Landroid/content/Context;Lcom/meizu/video/client/util/AsyncImageLoader;I)V

    iput-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChannelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    .line 235
    iget-boolean v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mTvListType:Z

    if-eqz v5, :cond_2

    .line 236
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    iget-object v6, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChannelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 242
    :cond_0
    :goto_0
    iget v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I

    invoke-virtual {p0, v5}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->showOrHideCustomView(I)V

    .line 244
    const/4 v1, 0x5

    .line 245
    .local v1, col:I
    const/4 v2, 0x0

    .line 246
    .local v2, leftMarginSpace:I
    const/4 v3, 0x0

    .line 247
    .local v3, rightMarginSpace:I
    const/4 v0, 0x0

    .line 248
    .local v0, bottomSpace:I
    const/4 v4, 0x0

    .line 250
    .local v4, topSpace:I
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mRes:Landroid/content/res/Resources;

    if-nez v5, :cond_1

    .line 251
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mRes:Landroid/content/res/Resources;

    .line 254
    :cond_1
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v7, :cond_4

    .line 255
    iget-boolean v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mTvListType:Z

    if-eqz v5, :cond_3

    .line 256
    const/16 v1, 0x8

    .line 257
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0900eb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 258
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0900ec

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 259
    sget v5, Lcom/meizu/video/client/common/Constant;->actionBarSmallHeight:I

    iget-object v6, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0900f1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int v4, v5, v6

    .line 265
    :goto_1
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0900f4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 280
    :goto_2
    iget-boolean v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mTvListType:Z

    if-eqz v5, :cond_6

    .line 282
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    invoke-virtual {v5, v2, v4, v3, v8}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 283
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    invoke-virtual {v5, v4}, Landroid/widget/GridView;->setTopSpacing(I)V

    .line 285
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    invoke-virtual {v5, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 286
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    iget-object v6, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0900f2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 287
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    iget-object v6, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0900f3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 289
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    invoke-virtual {v5, v9}, Landroid/widget/GridView;->setScrollBarStyle(I)V

    .line 290
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    invoke-virtual {v5, v0}, Landroid/widget/GridView;->setDockingBottom(I)V

    .line 292
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChannelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->setFreshType(I)V

    .line 293
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    invoke-virtual {v5, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 295
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    new-instance v6, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$3;

    invoke-direct {v6, p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$3;-><init>(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 314
    :goto_3
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChannelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    iget-object v6, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->setEpisodesList(Ljava/util/ArrayList;)V

    .line 315
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChannelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    invoke-virtual {v5}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->notifyDataSetChanged()V

    .line 316
    return-void

    .line 238
    .end local v0           #bottomSpace:I
    .end local v1           #col:I
    .end local v2           #leftMarginSpace:I
    .end local v3           #rightMarginSpace:I
    .end local v4           #topSpace:I
    :cond_2
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelprogramdetailEpisodesVarietyListview:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChannelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 261
    .restart local v0       #bottomSpace:I
    .restart local v1       #col:I
    .restart local v2       #leftMarginSpace:I
    .restart local v3       #rightMarginSpace:I
    .restart local v4       #topSpace:I
    :cond_3
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0900ef

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int v2, v5, v6

    .line 262
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0900f0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int v3, v5, v6

    .line 263
    sget v4, Lcom/meizu/video/client/common/Constant;->actionBarSmallHeight:I

    goto/16 :goto_1

    .line 267
    :cond_4
    iget-boolean v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mTvListType:Z

    if-eqz v5, :cond_5

    .line 268
    const/4 v1, 0x5

    .line 269
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0900e9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 270
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0900ea

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 271
    sget v5, Lcom/meizu/video/client/common/Constant;->actionBarBigHeight:I

    iget-object v6, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0900f1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int v4, v5, v6

    .line 277
    :goto_4
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0900f4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget v6, Lcom/meizu/video/client/common/Constant;->actionBarBigHeight:I

    add-int v0, v5, v6

    goto/16 :goto_2

    .line 273
    :cond_5
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0900ed

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int v2, v5, v6

    .line 274
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0900ee

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int v3, v5, v6

    .line 275
    sget v4, Lcom/meizu/video/client/common/Constant;->actionBarBigHeight:I

    goto :goto_4

    .line 306
    :cond_6
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelprogramdetailEpisodesVarietyListview:Landroid/widget/ListView;

    invoke-virtual {v5, v2, v4, v3, v8}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 307
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelprogramdetailEpisodesVarietyListview:Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->setTopSpacing(I)V

    .line 309
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelprogramdetailEpisodesVarietyListview:Landroid/widget/ListView;

    invoke-virtual {v5, v9}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 310
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelprogramdetailEpisodesVarietyListview:Landroid/widget/ListView;

    invoke-virtual {v5, v0}, Landroid/widget/ListView;->setDockingBottom(I)V

    .line 311
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChannelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->setFreshType(I)V

    .line 312
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChannelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    iget-object v6, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mChanelprogramdetailEpisodesVarietyListview:Landroid/widget/ListView;

    invoke-virtual {v5, v6}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->setView(Landroid/widget/ListView;)V

    goto/16 :goto_3
.end method

.method public showNetworkAlertDialog(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .parameter "networkType"
    .parameter "title"
    .parameter "url"
    .parameter "sourceType"

    .prologue
    const v9, 0x7f0a000e

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 692
    new-instance v6, Landroid/app/AlertDialog$Builder;

    const v1, 0x1030323

    invoke-direct {v6, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 693
    .local v6, networkDialog:Landroid/app/AlertDialog$Builder;
    new-instance v0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$NetworkDialogListener;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$NetworkDialogListener;-><init>(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;ILjava/lang/String;Ljava/lang/String;I)V

    .line 694
    .local v0, cdl:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$NetworkDialogListener;
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 695
    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 696
    const v1, 0x7f0a0145

    invoke-virtual {v6, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 697
    if-ne p1, v7, :cond_0

    .line 698
    invoke-virtual {v6, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 713
    :goto_0
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 714
    return-void

    .line 699
    :cond_0
    if-ne p1, v8, :cond_1

    .line 700
    const v1, 0x7f0a001a

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 701
    const v1, 0x7f0a001b

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 702
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    .line 703
    if-ne p4, v7, :cond_3

    .line 704
    const v1, 0x7f0a001c

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 709
    :cond_2
    :goto_1
    const v1, 0x7f0a0153

    invoke-virtual {v6, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 705
    :cond_3
    if-ne p4, v8, :cond_2

    .line 706
    const v1, 0x7f0a001e

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 707
    const v1, 0x7f0a001f

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 711
    :cond_4
    invoke-virtual {v6, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public showOrHideCustomView(I)V
    .locals 5
    .parameter "count"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 328
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 329
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mTvListType:Z

    if-eqz v0, :cond_4

    .line 330
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 331
    iget v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I

    if-lez v0, :cond_2

    .line 332
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectButtonMenu:Lcom/meizu/widget/SelectionButton;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SelectionButton;->setTotalCount(I)V

    .line 334
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectButtonMenu:Lcom/meizu/widget/SelectionButton;

    iget v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SelectionButton;->setCurrentCount(I)V

    .line 335
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 336
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 340
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 455
    :cond_1
    :goto_0
    return-void

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_3

    .line 344
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 345
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 347
    :cond_3
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 349
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 353
    :cond_4
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 354
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_5

    .line 355
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 356
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 358
    :cond_5
    iget v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I

    if-lez v0, :cond_8

    .line 359
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_6

    .line 360
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 361
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 363
    :cond_6
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenuActionMode:Landroid/view/MenuItem;

    if-eqz v0, :cond_7

    .line 364
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectButtonMenuActionMode:Lcom/meizu/widget/SelectionButton;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SelectionButton;->setTotalCount(I)V

    .line 365
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectButtonMenuActionMode:Lcom/meizu/widget/SelectionButton;

    iget v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SelectionButton;->setCurrentCount(I)V

    .line 366
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenuActionMode:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 367
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenuActionMode:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 369
    :cond_7
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenuActionMode:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenuActionMode:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 371
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenuActionMode:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 374
    :cond_8
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_9

    .line 375
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 376
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 378
    :cond_9
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenuActionMode:Landroid/view/MenuItem;

    if-eqz v0, :cond_a

    .line 379
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenuActionMode:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 380
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenuActionMode:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 382
    :cond_a
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenuActionMode:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenuActionMode:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 384
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenuActionMode:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 389
    :cond_b
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mTvListType:Z

    if-eqz v0, :cond_f

    .line 390
    iget v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I

    if-lez v0, :cond_d

    .line 391
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectButton:Lcom/meizu/widget/SelectionButton;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SelectionButton;->setTotalCount(I)V

    .line 392
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectButton:Lcom/meizu/widget/SelectionButton;

    iget v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SelectionButton;->setCurrentCount(I)V

    .line 393
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectButton:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 394
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_c

    .line 395
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 396
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 398
    :cond_c
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 400
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 403
    :cond_d
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 404
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_e

    .line 405
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 406
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 408
    :cond_e
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 410
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 414
    :cond_f
    iget v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I

    if-lez v0, :cond_13

    .line 415
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectButton:Lcom/meizu/widget/SelectionButton;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SelectionButton;->setTotalCount(I)V

    .line 416
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectButton:Lcom/meizu/widget/SelectionButton;

    iget v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCountNum:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SelectionButton;->setCurrentCount(I)V

    .line 417
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectButton:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 418
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenuActionMode:Landroid/view/MenuItem;

    if-eqz v0, :cond_10

    .line 419
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenuActionMode:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 420
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenuActionMode:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 422
    :cond_10
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenuActionMode:Landroid/view/MenuItem;

    if-eqz v0, :cond_11

    .line 423
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenuActionMode:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 424
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenuActionMode:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 426
    :cond_11
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_12

    .line 427
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 428
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 430
    :cond_12
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 432
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 435
    :cond_13
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 436
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenuActionMode:Landroid/view/MenuItem;

    if-eqz v0, :cond_14

    .line 437
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenuActionMode:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 438
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenuActionMode:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 440
    :cond_14
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenuActionMode:Landroid/view/MenuItem;

    if-eqz v0, :cond_15

    .line 441
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenuActionMode:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 442
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenuActionMode:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 444
    :cond_15
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_16

    .line 445
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 446
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mSelectMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 448
    :cond_16
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 449
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 450
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method public unBindService()V
    .locals 1

    .prologue
    .line 843
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloandService:Landroid/net/DownloadService;

    .line 844
    return-void
.end method
