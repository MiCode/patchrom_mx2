.class public Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;
.super Landroid/app/Activity;
.source "SelectDownloadActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;
    }
.end annotation


# instance fields
.field private final FRESH_CURRENT_ACTIONBAR_STYLE:I

.field private TAG:Ljava/lang/String;

.field private bar:Landroid/app/ActionBar;

.field private beginDownload:Z

.field private chanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

.field private chanelprogramdetail_episodes_variety_diverImage:Landroid/widget/ImageView;

.field private chanelprogramdetail_episodes_variety_listview:Landroid/widget/ListView;

.field private chanelprogramdetail_episodes_variety_operation:Landroid/widget/LinearLayout;

.field private chanelprogramdetail_episodes_variety_title:Landroid/widget/TextView;

.field private channelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

.field private checlItemIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private countNum:I

.field private downloadMenu:Landroid/view/MenuItem;

.field private downloadMenu_ActionMode:Landroid/view/MenuItem;

.field private downloandService:Landroid/net/DownloadService;

.field private episodesListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/EpisodesEntity;",
            ">;"
        }
    .end annotation
.end field

.field handler:Landroid/os/Handler;

.field itemDragListener:Landroid/widget/AbsListView$OnItemDragListener;

.field mActionCallback:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;

.field private selectButton:Lcom/meizu/widget/SelectionButton;

.field private selectButton_menu:Lcom/meizu/widget/SelectionButton;

.field private selectButton_menu_ActionMode:Lcom/meizu/widget/SelectionButton;

.field private selectMenu:Landroid/view/MenuItem;

.field private selectMenu_ActionMode:Landroid/view/MenuItem;

.field private style:Ljava/lang/String;

.field private tvListType:Z

.field private videoQualityType:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    const-string v0, "2"

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->style:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->channelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    .line 75
    new-instance v0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;-><init>(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mActionCallback:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;

    .line 77
    iput v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->countNum:I

    .line 79
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->videoQualityType:I

    .line 81
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu:Landroid/view/MenuItem;

    .line 82
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu:Landroid/view/MenuItem;

    .line 86
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu_ActionMode:Landroid/view/MenuItem;

    .line 87
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu_ActionMode:Landroid/view/MenuItem;

    .line 91
    const-string v0, "SelectDownloadActivity"

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->TAG:Ljava/lang/String;

    .line 95
    iput-boolean v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->beginDownload:Z

    .line 97
    iput-boolean v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->tvListType:Z

    .line 99
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->FRESH_CURRENT_ACTIONBAR_STYLE:I

    .line 681
    new-instance v0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$4;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$4;-><init>(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->itemDragListener:Landroid/widget/AbsListView$OnItemDragListener;

    .line 706
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloandService:Landroid/net/DownloadService;

    .line 716
    new-instance v0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$5;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$5;-><init>(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu_ActionMode:Landroid/view/MenuItem;

    return-object p1
.end method

.method static synthetic access$200(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu_ActionMode:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$202(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu_ActionMode:Landroid/view/MenuItem;

    return-object p1
.end method

.method static synthetic access$300(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Lcom/meizu/widget/SelectionButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectButton_menu_ActionMode:Lcom/meizu/widget/SelectionButton;

    return-object v0
.end method

.method static synthetic access$302(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;Lcom/meizu/widget/SelectionButton;)Lcom/meizu/widget/SelectionButton;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectButton_menu_ActionMode:Lcom/meizu/widget/SelectionButton;

    return-object p1
.end method

.method static synthetic access$400(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->episodesListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->countNum:I

    return v0
.end method

.method static synthetic access$502(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->countNum:I

    return p1
.end method

.method static synthetic access$508(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->countNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->countNum:I

    return v0
.end method

.method static synthetic access$510(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->countNum:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->countNum:I

    return v0
.end method

.method static synthetic access$600(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->checlItemIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->checlItemIds:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->chanelprogramdetail_episodes_variety_listview:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;I[J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->actionItemClick(I[J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->beginDownload:Z

    return v0
.end method

.method private varargs actionItemClick(I[J)Z
    .locals 3
    .parameter "id"
    .parameter "items"

    .prologue
    const/4 v0, 0x0

    .line 567
    packed-switch p1, :pswitch_data_0

    .line 574
    :goto_0
    return v0

    .line 569
    :pswitch_0
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 570
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chanelprogramdetail_episodes_variety_listview.getCheckedItemCount()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->chanelprogramdetail_episodes_variety_listview:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->beginDownLoadAndReturn()V

    .line 572
    const/4 v0, 0x1

    goto :goto_0

    .line 567
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0199
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public beginDownLoadAndReturn()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 597
    const/4 v5, 0x0

    .line 598
    .local v5, selectdownNum:I
    iget-object v7, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->checlItemIds:Ljava/util/ArrayList;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->checlItemIds:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 599
    iput-boolean v10, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->beginDownload:Z

    .line 600
    const-string v6, ""

    .line 601
    .local v6, videoUrl:Ljava/lang/String;
    iget-object v7, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->checlItemIds:Ljava/util/ArrayList;

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

    .line 602
    .local v3, item:J
    iget-object v7, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " checlItemIds item="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v7, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->episodesListEntity:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-ltz v7, :cond_0

    iget-object v7, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    int-to-long v7, v7

    cmp-long v7, v3, v7

    if-gez v7, :cond_0

    .line 604
    iget-object v7, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->episodesListEntity:Ljava/util/ArrayList;

    long-to-int v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    .line 605
    .local v0, episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    if-eqz v0, :cond_0

    .line 606
    add-int/lit8 v5, v5, 0x1

    .line 607
    iget v7, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->videoQualityType:I

    invoke-static {v0, v7}, Lcom/meizu/video/client/util/CommonUtil;->getEpisodesVideoDownLoadUrl(Lcom/meizu/video/client/ui/entity/EpisodesEntity;I)Ljava/lang/String;

    move-result-object v6

    .line 609
    if-eqz v6, :cond_1

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 610
    :cond_1
    invoke-static {v0, v10}, Lcom/meizu/video/client/util/CommonUtil;->getEpisodesVideoDownLoadUrl(Lcom/meizu/video/client/ui/entity/EpisodesEntity;I)Ljava/lang/String;

    move-result-object v6

    .line 614
    :cond_2
    iget-object v7, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloandService:Landroid/net/DownloadService;

    if-eqz v7, :cond_3

    .line 616
    :try_start_0
    iget-object v7, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloandService:Landroid/net/DownloadService;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/meizu/video/client/util/CommonUtil;->getFullFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/net/DownloadService;->downloadByPath(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
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

    .line 624
    .end local v0           #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    .end local v3           #item:J
    :cond_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 625
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "selectdownNum"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 626
    const/4 v7, -0x1

    invoke-virtual {p0, v7, v2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->setResult(ILandroid/content/Intent;)V

    .line 627
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->finish()V

    .line 629
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v6           #videoUrl:Ljava/lang/String;
    :cond_5
    return-void

    .line 617
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
    .line 709
    new-instance v0, Landroid/net/DownloadService;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/DownloadService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloandService:Landroid/net/DownloadService;

    .line 710
    return-void
.end method

.method public checkAllOrUnall()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 632
    iget-boolean v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->tvListType:Z

    if-eqz v3, :cond_4

    .line 633
    iget v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->countNum:I

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 634
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->checlItemIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 635
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->episodesListEntity:Ljava/util/ArrayList;

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

    .line 636
    .local v0, episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    invoke-virtual {v0, v5}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setSelected(Z)V

    goto :goto_0

    .line 638
    .end local v0           #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    :cond_0
    iput v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->countNum:I

    .line 639
    iget v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->countNum:I

    invoke-virtual {p0, v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->showOrHideCustomView(I)V

    .line 640
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->chanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->invalidateViews()V

    .line 679
    :goto_1
    return-void

    .line 642
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    const/4 v1, 0x0

    .line 643
    .local v1, i:I
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    .line 644
    .restart local v0       #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    invoke-virtual {v0, v6}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setSelected(Z)V

    .line 645
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->checlItemIds:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 646
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->checlItemIds:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 650
    .end local v0           #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    :cond_3
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->countNum:I

    .line 651
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->chanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->invalidateViews()V

    .line 652
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectButton:Lcom/meizu/widget/SelectionButton;

    iget v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->countNum:I

    invoke-virtual {v3, v4}, Lcom/meizu/widget/SelectionButton;->setCurrentCount(I)V

    .line 653
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectButton_menu:Lcom/meizu/widget/SelectionButton;

    iget v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->countNum:I

    invoke-virtual {v3, v4}, Lcom/meizu/widget/SelectionButton;->setCurrentCount(I)V

    goto :goto_1

    .line 656
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectButton_menu_ActionMode:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v3}, Lcom/meizu/widget/SelectionButton;->isAllSelected()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 657
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->checlItemIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 658
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    .line 659
    .restart local v0       #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    invoke-virtual {v0, v5}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setSelected(Z)V

    goto :goto_3

    .line 661
    .end local v0           #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    :cond_5
    iput v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->countNum:I

    .line 662
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->chanelprogramdetail_episodes_variety_listview:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->finishMultiChoice()V

    .line 675
    :goto_4
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectButton_menu_ActionMode:Lcom/meizu/widget/SelectionButton;

    iget v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->countNum:I

    invoke-virtual {v3, v4}, Lcom/meizu/widget/SelectionButton;->setCurrentCount(I)V

    .line 676
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectButton_menu:Lcom/meizu/widget/SelectionButton;

    iget v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->countNum:I

    invoke-virtual {v3, v4}, Lcom/meizu/widget/SelectionButton;->setCurrentCount(I)V

    .line 677
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectButton:Lcom/meizu/widget/SelectionButton;

    iget v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->countNum:I

    invoke-virtual {v3, v4}, Lcom/meizu/widget/SelectionButton;->setCurrentCount(I)V

    goto/16 :goto_1

    .line 664
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_6
    const/4 v1, 0x0

    .line 665
    .restart local v1       #i:I
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    .line 666
    .restart local v0       #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    invoke-virtual {v0, v6}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setSelected(Z)V

    .line 667
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->checlItemIds:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 668
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->checlItemIds:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 672
    .end local v0           #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    :cond_8
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->chanelprogramdetail_episodes_variety_listview:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->checkedAll()V

    .line 673
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->countNum:I

    goto :goto_4
.end method

.method public initView()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 160
    new-instance v1, Lcom/meizu/widget/SelectionButton;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/meizu/widget/SelectionButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectButton:Lcom/meizu/widget/SelectionButton;

    .line 161
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 162
    .local v0, lp:Landroid/app/ActionBar$LayoutParams;
    const/16 v1, 0x15

    iput v1, v0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 163
    const/4 v1, 0x5

    iput v1, v0, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    .line 164
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectButton:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v1, v0}, Lcom/meizu/widget/SelectionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectButton:Lcom/meizu/widget/SelectionButton;

    new-instance v2, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$1;

    invoke-direct {v2, p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$1;-><init>(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)V

    invoke-virtual {v1, v2}, Lcom/meizu/widget/SelectionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 564
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x1

    .line 278
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 280
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->tvListType:Z

    if-nez v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->checlItemIds:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->checlItemIds:Ljava/util/ArrayList;

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->checlItemIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->chanelprogramdetail_episodes_variety_listview:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 290
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 292
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->style:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->showEpisodesView(Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->bar:Landroid/app/ActionBar;

    .line 106
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->bar:Landroid/app/ActionBar;

    invoke-virtual {v3, v5}, Landroid/app/ActionBar;->setActionModeHeaderHidden(Z)V

    .line 107
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->bar:Landroid/app/ActionBar;

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 108
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->bar:Landroid/app/ActionBar;

    invoke-virtual {v3, v7}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 109
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->bar:Landroid/app/ActionBar;

    const v4, 0x7f0a000b

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 111
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->bar:Landroid/app/ActionBar;

    invoke-static {p0, v3, v5}, Lcom/meizu/video/client/util/CommonUtil;->setActionbarStyle(Landroid/app/Activity;Landroid/app/ActionBar;I)V

    .line 113
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 114
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 116
    const-string v3, "style"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    const-string v3, "style"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->style:Ljava/lang/String;

    .line 118
    const-string v3, "1"

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->style:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->tvListType:Z

    .line 121
    :cond_0
    invoke-static {}, Lcom/meizu/video/client/common/Constant;->getEpisodesListEntity()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->episodesListEntity:Ljava/util/ArrayList;

    .line 122
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->episodesListEntity:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 123
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    .line 124
    .local v1, entry:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    invoke-virtual {v1, v7}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setSelected(Z)V

    goto :goto_0

    .line 129
    .end local v1           #entry:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->bindService()V

    .line 131
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->initView()V

    .line 133
    iget-boolean v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->tvListType:Z

    if-eqz v3, :cond_2

    .line 134
    const v3, 0x7f040013

    invoke-virtual {p0, v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->setContentView(I)V

    .line 135
    const v3, 0x7f0d0034

    invoke-virtual {p0, v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->chanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    .line 136
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->chanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    const/high16 v4, 0x7f08

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setSelector(I)V

    .line 156
    :goto_1
    return-void

    .line 138
    :cond_2
    const v3, 0x7f040015

    invoke-virtual {p0, v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->setContentView(I)V

    .line 139
    const v3, 0x7f0d0038

    invoke-virtual {p0, v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->chanelprogramdetail_episodes_variety_title:Landroid/widget/TextView;

    .line 140
    const v3, 0x7f0d003a

    invoke-virtual {p0, v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->chanelprogramdetail_episodes_variety_listview:Landroid/widget/ListView;

    .line 142
    const v3, 0x7f0d003b

    invoke-virtual {p0, v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->chanelprogramdetail_episodes_variety_operation:Landroid/widget/LinearLayout;

    .line 144
    const v3, 0x7f0d0039

    invoke-virtual {p0, v3}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->chanelprogramdetail_episodes_variety_diverImage:Landroid/widget/ImageView;

    .line 146
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->chanelprogramdetail_episodes_variety_title:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->chanelprogramdetail_episodes_variety_operation:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->chanelprogramdetail_episodes_variety_diverImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->chanelprogramdetail_episodes_variety_listview:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mActionCallback:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$ActionModeWrapper;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 151
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->chanelprogramdetail_episodes_variety_listview:Landroid/widget/ListView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 152
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->chanelprogramdetail_episodes_variety_listview:Landroid/widget/ListView;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setEnableDragSelection(Z)V

    .line 153
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->chanelprogramdetail_episodes_variety_listview:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->itemDragListener:Landroid/widget/AbsListView$OnItemDragListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setItemDragListener(Landroid/widget/AbsListView$OnItemDragListener;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 184
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 185
    .local v0, menuInflater:Landroid/view/MenuInflater;
    const v1, 0x7f11000a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 186
    const v1, 0x7f0d0199

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu:Landroid/view/MenuItem;

    .line 188
    const v1, 0x7f0d019a

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu:Landroid/view/MenuItem;

    .line 190
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/widget/SelectionButton;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectButton_menu:Lcom/meizu/widget/SelectionButton;

    .line 192
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectButton_menu:Lcom/meizu/widget/SelectionButton;

    new-instance v2, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$2;

    invoke-direct {v2, p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$2;-><init>(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)V

    invoke-virtual {v1, v2}, Lcom/meizu/widget/SelectionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 199
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 200
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 201
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 204
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->unBindService()V

    .line 702
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 703
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
    const v4, 0x7f0d0036

    .line 434
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " beginDownload="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->beginDownload:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p3, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->beginDownload:Z

    if-eqz v1, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->checlItemIds:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 439
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->checlItemIds:Ljava/util/ArrayList;

    .line 441
    :cond_2
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    .line 442
    .local v0, episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  episodesEntity.isSelected() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->isSelected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->isSelected()Z

    move-result v1

    if-nez v1, :cond_3

    .line 444
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 445
    iget v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->countNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->countNum:I

    .line 446
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setSelected(Z)V

    .line 447
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->checlItemIds:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    :goto_1
    iget v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->countNum:I

    invoke-virtual {p0, v1}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->showOrHideCustomView(I)V

    goto :goto_0

    .line 449
    :cond_3
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f020086

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 450
    iget v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->countNum:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->countNum:I

    .line 451
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setSelected(Z)V

    .line 452
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->checlItemIds:Ljava/util/ArrayList;

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
    .line 428
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

    .line 430
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 582
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

    .line 583
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 592
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 585
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 586
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->beginDownLoadAndReturn()V

    goto :goto_0

    .line 583
    :pswitch_data_0
    .packed-switch 0x7f0d0199
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 177
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->style:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->showEpisodesView(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public showEpisodesView(Ljava/lang/String;)V
    .locals 13
    .parameter "style"

    .prologue
    const/16 v12, 0xa

    const/4 v11, 0x2

    const-wide v9, 0x4041400000000000L

    const-wide v7, 0x4040400000000000L

    const/4 v6, 0x0

    .line 208
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->channelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    if-nez v4, :cond_0

    .line 209
    new-instance v4, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5, v11}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;-><init>(Landroid/content/Context;Lcom/meizu/video/client/util/AsyncImageLoader;I)V

    iput-object v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->channelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    .line 212
    :cond_0
    iget v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->countNum:I

    invoke-virtual {p0, v4}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->showOrHideCustomView(I)V

    .line 214
    const/4 v1, 0x5

    .line 215
    .local v1, col:I
    const/4 v2, 0x0

    .line 216
    .local v2, left_margin_space:I
    const/4 v3, 0x0

    .line 217
    .local v3, right_margin_space:I
    const/4 v0, 0x0

    .line 218
    .local v0, bottomSpace:I
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v11, :cond_2

    .line 219
    iget-boolean v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->tvListType:Z

    if-eqz v4, :cond_1

    .line 220
    const/16 v1, 0x8

    .line 221
    invoke-static {p0, v9, v10}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    .line 222
    invoke-static {p0, v9, v10}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    .line 227
    :goto_0
    const/16 v4, 0x19

    invoke-static {p0, v4}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v0

    .line 240
    :goto_1
    iget-boolean v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->tvListType:Z

    if-eqz v4, :cond_4

    .line 241
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->chanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v2, v6, v3, v6}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 243
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->chanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 244
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->chanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    invoke-static {p0, v12}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 245
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->chanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    const/16 v5, 0xd

    invoke-static {p0, v5}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 247
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->chanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    const/high16 v5, 0x200

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setScrollBarStyle(I)V

    .line 248
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->chanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v0}, Landroid/widget/GridView;->setDockingBottom(I)V

    .line 251
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->chanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->channelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 252
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->channelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    invoke-virtual {v4, v12}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->setFreshType(I)V

    .line 253
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->chanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    invoke-virtual {v4, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 255
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->chanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    new-instance v5, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$3;

    invoke-direct {v5, p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$3;-><init>(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 272
    :goto_2
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->channelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->setEpisodesList(Ljava/util/ArrayList;)V

    .line 273
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->channelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    invoke-virtual {v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->notifyDataSetChanged()V

    .line 274
    return-void

    .line 224
    :cond_1
    const/16 v4, 0x28

    invoke-static {p0, v4}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v2

    .line 225
    const/16 v4, 0x28

    invoke-static {p0, v4}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v3

    goto :goto_0

    .line 229
    :cond_2
    iget-boolean v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->tvListType:Z

    if-eqz v4, :cond_3

    .line 230
    const/4 v1, 0x5

    .line 231
    const/16 v4, 0x18

    invoke-static {p0, v4}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v2

    .line 232
    const/16 v4, 0x18

    invoke-static {p0, v4}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v3

    .line 237
    :goto_3
    const/16 v4, 0x19

    invoke-static {p0, v4}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v4

    add-int/lit8 v0, v4, 0x62

    goto :goto_1

    .line 234
    :cond_3
    invoke-static {p0, v7, v8}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    .line 235
    invoke-static {p0, v7, v8}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    goto :goto_3

    .line 265
    :cond_4
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->chanelprogramdetail_episodes_variety_listview:Landroid/widget/ListView;

    invoke-virtual {v4, v2, v6, v3, v6}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 266
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->chanelprogramdetail_episodes_variety_listview:Landroid/widget/ListView;

    const/high16 v5, 0x200

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 267
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->chanelprogramdetail_episodes_variety_listview:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setDockingBottom(I)V

    .line 268
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->chanelprogramdetail_episodes_variety_listview:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->channelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 269
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->channelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->setFreshType(I)V

    .line 270
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->channelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    iget-object v5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->chanelprogramdetail_episodes_variety_listview:Landroid/widget/ListView;

    invoke-virtual {v4, v5}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->setView(Landroid/widget/ListView;)V

    goto :goto_2
.end method

.method public showOrHideCustomView(I)V
    .locals 5
    .parameter "count"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 296
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 297
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->tvListType:Z

    if-eqz v0, :cond_4

    .line 298
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->bar:Landroid/app/ActionBar;

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 299
    iget v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->countNum:I

    if-lez v0, :cond_2

    .line 300
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectButton_menu:Lcom/meizu/widget/SelectionButton;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SelectionButton;->setTotalCount(I)V

    .line 302
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectButton_menu:Lcom/meizu/widget/SelectionButton;

    iget v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->countNum:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SelectionButton;->setCurrentCount(I)V

    .line 303
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 304
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 308
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 423
    :cond_1
    :goto_0
    return-void

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_3

    .line 312
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 313
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 315
    :cond_3
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 317
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 321
    :cond_4
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->bar:Landroid/app/ActionBar;

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 322
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_5

    .line 323
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 324
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 326
    :cond_5
    iget v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->countNum:I

    if-lez v0, :cond_8

    .line 327
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_6

    .line 328
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 329
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 331
    :cond_6
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu_ActionMode:Landroid/view/MenuItem;

    if-eqz v0, :cond_7

    .line 332
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectButton_menu_ActionMode:Lcom/meizu/widget/SelectionButton;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SelectionButton;->setTotalCount(I)V

    .line 333
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectButton_menu_ActionMode:Lcom/meizu/widget/SelectionButton;

    iget v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->countNum:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SelectionButton;->setCurrentCount(I)V

    .line 334
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu_ActionMode:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 335
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu_ActionMode:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 337
    :cond_7
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu_ActionMode:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu_ActionMode:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 339
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu_ActionMode:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 342
    :cond_8
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_9

    .line 343
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 344
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 346
    :cond_9
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu_ActionMode:Landroid/view/MenuItem;

    if-eqz v0, :cond_a

    .line 347
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu_ActionMode:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 348
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu_ActionMode:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 350
    :cond_a
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu_ActionMode:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu_ActionMode:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 352
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu_ActionMode:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 357
    :cond_b
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->tvListType:Z

    if-eqz v0, :cond_f

    .line 358
    iget v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->countNum:I

    if-lez v0, :cond_d

    .line 359
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectButton:Lcom/meizu/widget/SelectionButton;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SelectionButton;->setTotalCount(I)V

    .line 360
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectButton:Lcom/meizu/widget/SelectionButton;

    iget v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->countNum:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SelectionButton;->setCurrentCount(I)V

    .line 361
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->bar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectButton:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 362
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_c

    .line 363
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 364
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 366
    :cond_c
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 368
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 371
    :cond_d
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->bar:Landroid/app/ActionBar;

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 372
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_e

    .line 373
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 374
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 376
    :cond_e
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 378
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 382
    :cond_f
    iget v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->countNum:I

    if-lez v0, :cond_13

    .line 383
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectButton:Lcom/meizu/widget/SelectionButton;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SelectionButton;->setTotalCount(I)V

    .line 384
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectButton:Lcom/meizu/widget/SelectionButton;

    iget v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->countNum:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SelectionButton;->setCurrentCount(I)V

    .line 385
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->bar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectButton:Lcom/meizu/widget/SelectionButton;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 386
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu_ActionMode:Landroid/view/MenuItem;

    if-eqz v0, :cond_10

    .line 387
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu_ActionMode:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 388
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu_ActionMode:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 390
    :cond_10
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu_ActionMode:Landroid/view/MenuItem;

    if-eqz v0, :cond_11

    .line 391
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu_ActionMode:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 392
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu_ActionMode:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 394
    :cond_11
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_12

    .line 395
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 396
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 398
    :cond_12
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 400
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 403
    :cond_13
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->bar:Landroid/app/ActionBar;

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 404
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu_ActionMode:Landroid/view/MenuItem;

    if-eqz v0, :cond_14

    .line 405
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu_ActionMode:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 406
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu_ActionMode:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 408
    :cond_14
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu_ActionMode:Landroid/view/MenuItem;

    if-eqz v0, :cond_15

    .line 409
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu_ActionMode:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 410
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu_ActionMode:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 412
    :cond_15
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_16

    .line 413
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 414
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->selectMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 416
    :cond_16
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 418
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloadMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method public unBindService()V
    .locals 1

    .prologue
    .line 713
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->downloandService:Landroid/net/DownloadService;

    .line 714
    return-void
.end method
