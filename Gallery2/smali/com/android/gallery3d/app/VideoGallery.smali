.class public final Lcom/android/gallery3d/app/VideoGallery;
.super Lcom/android/gallery3d/app/AbstractGalleryActivity;
.source "VideoGallery.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/VideoGallery$LoadCommonDataTask;
    }
.end annotation


# static fields
.field private static mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

.field private static mHasCheckVersion:Z

.field private static mSelectedPage:I


# instance fields
.field private actionbarType:I

.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private channelMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

.field private isProductInternational:Z

.field private mActionBarTitle:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mLastSelectedPage:I

.field private mSearchView:Landroid/view/View;

.field private mTabListener:Landroid/app/ActionBar$TabListener;

.field private mUpdateActionBarTitleAfterChanged:Z

.field private mVersionCheckDialog:Landroid/app/Dialog;

.field private typeMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/gallery3d/app/VideoGallery;->mHasCheckVersion:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;-><init>()V

    .line 80
    iput-object v0, p0, Lcom/android/gallery3d/app/VideoGallery;->channelMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    .line 81
    iput-object v0, p0, Lcom/android/gallery3d/app/VideoGallery;->typeMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    .line 104
    iput-boolean v1, p0, Lcom/android/gallery3d/app/VideoGallery;->mUpdateActionBarTitleAfterChanged:Z

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/VideoGallery;->mLastSelectedPage:I

    .line 108
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/app/VideoGallery;->actionbarType:I

    .line 110
    iput-boolean v1, p0, Lcom/android/gallery3d/app/VideoGallery;->isProductInternational:Z

    .line 114
    new-instance v0, Lcom/android/gallery3d/app/VideoGallery$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/VideoGallery$1;-><init>(Lcom/android/gallery3d/app/VideoGallery;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/VideoGallery;->mTabListener:Landroid/app/ActionBar$TabListener;

    .line 850
    new-instance v0, Lcom/android/gallery3d/app/VideoGallery$7;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/VideoGallery$7;-><init>(Lcom/android/gallery3d/app/VideoGallery;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/VideoGallery;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/gallery3d/app/VideoGallery;->mHasCheckVersion:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    sput-boolean p0, Lcom/android/gallery3d/app/VideoGallery;->mHasCheckVersion:Z

    return p0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/android/gallery3d/app/VideoGallery;->mSelectedPage:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    sput p0, Lcom/android/gallery3d/app/VideoGallery;->mSelectedPage:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/VideoGallery;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/gallery3d/app/VideoGallery;->mUpdateActionBarTitleAfterChanged:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/gallery3d/app/VideoGallery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/gallery3d/app/VideoGallery;->mUpdateActionBarTitleAfterChanged:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/VideoGallery;Landroid/app/Fragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/VideoGallery;->setActionBar(Landroid/app/Fragment;Z)V

    return-void
.end method

.method static synthetic access$400()Lcom/android/gallery3d/app/GalleryActionBar;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/gallery3d/app/VideoGallery;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/VideoGallery;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGallery;->mActionBarTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/gallery3d/app/VideoGallery;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/gallery3d/app/VideoGallery;->mActionBarTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/VideoGallery;)Lcom/meizu/video/client/ui/entity/MsgEntity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGallery;->channelMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/gallery3d/app/VideoGallery;Lcom/meizu/video/client/ui/entity/MsgEntity;)Lcom/meizu/video/client/ui/entity/MsgEntity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/gallery3d/app/VideoGallery;->channelMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/VideoGallery;)Lcom/meizu/video/client/ui/entity/MsgEntity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGallery;->typeMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/gallery3d/app/VideoGallery;Lcom/meizu/video/client/ui/entity/MsgEntity;)Lcom/meizu/video/client/ui/entity/MsgEntity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/gallery3d/app/VideoGallery;->typeMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    return-object p1
.end method

.method public static getTabChannel()I
    .locals 1

    .prologue
    .line 807
    const/4 v0, 0x2

    return v0
.end method

.method public static getTabRank()I
    .locals 1

    .prologue
    .line 803
    const/4 v0, 0x1

    return v0
.end method

.method public static getTabSearch()I
    .locals 1

    .prologue
    .line 811
    const/4 v0, 0x3

    return v0
.end method

.method public static getmActionBar()Lcom/android/gallery3d/app/GalleryActionBar;
    .locals 1

    .prologue
    .line 815
    sget-object v0, Lcom/android/gallery3d/app/VideoGallery;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    return-object v0
.end method

.method public static getmHasCheckVersion()Z
    .locals 1

    .prologue
    .line 900
    sget-boolean v0, Lcom/android/gallery3d/app/VideoGallery;->mHasCheckVersion:Z

    return v0
.end method

.method public static getmSelectedPage()I
    .locals 1

    .prologue
    .line 799
    sget v0, Lcom/android/gallery3d/app/VideoGallery;->mSelectedPage:I

    return v0
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 574
    invoke-static {}, Lcom/meizu/video/client/common/Constant;->getOrderTypeAreaYearOrderListEntity()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/meizu/video/client/common/Constant;->getOrderTypeAreaYearOrderListEntity()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 575
    :cond_0
    new-instance v0, Lcom/android/gallery3d/app/VideoGallery$LoadCommonDataTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/VideoGallery$LoadCommonDataTask;-><init>(Lcom/android/gallery3d/app/VideoGallery;Lcom/android/gallery3d/app/VideoGallery$1;)V

    .line 576
    .local v0, loader:Lcom/android/gallery3d/app/VideoGallery$LoadCommonDataTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/VideoGallery$LoadCommonDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 578
    .end local v0           #loader:Lcom/android/gallery3d/app/VideoGallery$LoadCommonDataTask;
    :cond_1
    return-void
.end method

.method private setActionBar(Landroid/app/Fragment;Z)V
    .locals 6
    .parameter "fragment"
    .parameter "updateTitleAfterChanged"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 757
    sget-object v2, Lcom/android/gallery3d/app/VideoGallery;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 758
    .local v0, actionBar:Landroid/app/ActionBar;
    sget v2, Lcom/android/gallery3d/app/VideoGallery;->mSelectedPage:I

    packed-switch v2, :pswitch_data_0

    .line 796
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 762
    .restart local p1
    :pswitch_0
    sget-object v2, Lcom/android/gallery3d/app/VideoGallery;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    const v3, 0x7f0a01e2

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(I)V

    .line 763
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 764
    sget-object v2, Lcom/android/gallery3d/app/VideoGallery;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/app/GalleryActionBar;->setSubtitle(Ljava/lang/String;)V

    .line 765
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 766
    iput v4, p0, Lcom/android/gallery3d/app/VideoGallery;->actionbarType:I

    goto :goto_0

    .line 769
    :pswitch_1
    instance-of v2, p1, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    if-eqz v2, :cond_1

    .line 770
    check-cast p1, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    .end local p1
    invoke-virtual {p1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->setActionBar()V

    .line 772
    :cond_1
    iput v4, p0, Lcom/android/gallery3d/app/VideoGallery;->actionbarType:I

    goto :goto_0

    .line 775
    .restart local p1
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/VideoGallery;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "chaneldetailtabFragment"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 776
    .local v1, chaneldetailtabFragment:Landroid/app/Fragment;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Fragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 777
    check-cast v1, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;

    .end local v1           #chaneldetailtabFragment:Landroid/app/Fragment;
    invoke-virtual {v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->setActionBar()V

    .line 778
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/gallery3d/app/VideoGallery;->actionbarType:I

    goto :goto_0

    .line 781
    .restart local v1       #chaneldetailtabFragment:Landroid/app/Fragment;
    :cond_2
    instance-of v2, p1, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    if-eqz v2, :cond_0

    .line 782
    check-cast p1, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    .end local p1
    invoke-virtual {p1}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->setActionBar()V

    .line 783
    iput v4, p0, Lcom/android/gallery3d/app/VideoGallery;->actionbarType:I

    goto :goto_0

    .line 788
    .end local v1           #chaneldetailtabFragment:Landroid/app/Fragment;
    .restart local p1
    :pswitch_3
    instance-of v2, p1, Lcom/meizu/video/client/ui/module/search/SearchFragment;

    if-eqz v2, :cond_3

    .line 789
    check-cast p1, Lcom/meizu/video/client/ui/module/search/SearchFragment;

    .end local p1
    invoke-virtual {p1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->setActionBar()V

    .line 791
    :cond_3
    iput v4, p0, Lcom/android/gallery3d/app/VideoGallery;->actionbarType:I

    goto :goto_0

    .line 758
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setIntentType(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v4, 0x7

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 419
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 422
    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    iput v6, v3, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mType:I

    .line 423
    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    iput v5, v3, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mMimeType:I

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    const-string v3, "Camera"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, extra:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 425
    const-string v3, "Photo"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 426
    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    const/16 v4, 0x8

    iput v4, v3, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mType:I

    .line 427
    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    iput v6, v3, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mMimeType:I

    goto :goto_0

    .line 428
    :cond_2
    const-string v3, "Record"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 429
    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    const/16 v4, 0x9

    iput v4, v3, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mType:I

    .line 430
    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    iput v5, v3, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mMimeType:I

    goto :goto_0

    .line 432
    :cond_3
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 433
    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    iput v4, v3, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mType:I

    .line 434
    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    iput v5, v3, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mMimeType:I

    goto :goto_0

    .line 435
    :cond_4
    const-string v3, "android.intent.action.PICK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "android.intent.action.gallery.GET_CONTENT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 436
    :cond_5
    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    const/4 v4, 0x6

    iput v4, v3, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mType:I

    .line 437
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, mimeType:Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 439
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 443
    :goto_1
    const-string v3, "image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 444
    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    iput v6, v3, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mMimeType:I

    goto :goto_0

    .line 441
    :cond_6
    const-string v2, " "

    goto :goto_1

    .line 445
    :cond_7
    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 446
    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    iput v5, v3, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mMimeType:I

    goto/16 :goto_0

    .line 448
    :cond_8
    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mMimeType:I

    goto/16 :goto_0

    .line 450
    .end local v2           #mimeType:Ljava/lang/String;
    :cond_9
    const-string v3, "com.android.camera.action.REVIEW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 451
    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    iput v4, v3, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mType:I

    .line 452
    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIntentType:Lcom/android/gallery3d/app/GalleryActivity$IntentType;

    iput v5, v3, Lcom/android/gallery3d/app/GalleryActivity$IntentType;->mMimeType:I

    goto/16 :goto_0
.end method

.method public static setmHasCheckVersion(Z)V
    .locals 0
    .parameter "hasCheckVersion"

    .prologue
    .line 904
    sput-boolean p0, Lcom/android/gallery3d/app/VideoGallery;->mHasCheckVersion:Z

    .line 905
    return-void
.end method

.method private setupPages()V
    .locals 3

    .prologue
    .line 359
    sget-object v2, Lcom/android/gallery3d/app/VideoGallery;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 361
    .local v0, bar:Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getTabCount()I

    move-result v2

    if-gtz v2, :cond_0

    .line 362
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 363
    .local v1, tab:Landroid/app/ActionBar$Tab;
    const-string v2, "tag_local"

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 364
    const v2, 0x7f02018c

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    .line 365
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoGallery;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 366
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;I)V

    .line 368
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 369
    const-string v2, "tag_rank"

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 370
    const v2, 0x7f02018d

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    .line 371
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoGallery;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 372
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;I)V

    .line 374
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 375
    const-string v2, "tag_channel"

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 376
    const v2, 0x7f02018b

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    .line 377
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoGallery;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 378
    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;I)V

    .line 380
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 381
    const-string v2, "tag_search"

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 382
    const v2, 0x7f02018e

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    .line 383
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoGallery;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 384
    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;I)V

    .line 385
    iget v2, p0, Lcom/android/gallery3d/app/VideoGallery;->mLastSelectedPage:I

    if-ltz v2, :cond_0

    .line 386
    iget v2, p0, Lcom/android/gallery3d/app/VideoGallery;->mLastSelectedPage:I

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 389
    .end local v1           #tab:Landroid/app/ActionBar$Tab;
    :cond_0
    return-void
.end method


# virtual methods
.method public chooseTabAgian(Landroid/app/Fragment;I)V
    .locals 4
    .parameter "fragment"
    .parameter "choosePosition"

    .prologue
    .line 819
    if-eqz p1, :cond_0

    .line 820
    packed-switch p2, :pswitch_data_0

    .line 822
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tab position is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 826
    :pswitch_0
    instance-of v1, p1, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    if-eqz v1, :cond_0

    .line 827
    check-cast p1, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    .end local p1
    invoke-virtual {p1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->checkDataAndUpdateView()V

    .line 848
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 831
    .restart local p1
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/VideoGallery;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "chaneldetailtabFragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 832
    .local v0, chaneldetailtabFragment:Landroid/app/Fragment;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 833
    check-cast v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;

    .end local v0           #chaneldetailtabFragment:Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->checkDataAndUpdateView()V

    goto :goto_0

    .line 836
    .restart local v0       #chaneldetailtabFragment:Landroid/app/Fragment;
    :cond_1
    instance-of v1, p1, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    if-eqz v1, :cond_0

    .line 837
    check-cast p1, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    .end local p1
    invoke-virtual {p1}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->checkDataAndUpdateView()V

    goto :goto_0

    .line 842
    .end local v0           #chaneldetailtabFragment:Landroid/app/Fragment;
    .restart local p1
    :pswitch_3
    instance-of v1, p1, Lcom/meizu/video/client/ui/module/search/SearchFragment;

    if-eqz v1, :cond_0

    .line 843
    check-cast p1, Lcom/meizu/video/client/ui/module/search/SearchFragment;

    .end local p1
    invoke-virtual {p1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->checkDataAndUpdateView()V

    goto :goto_0

    .line 820
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public destroyBrocast()V
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGallery;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/VideoGallery;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 886
    return-void
.end method

.method public goToMstore()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 889
    const-string v1, "systemAppsUpdate"

    .line 890
    .local v1, SYSTEM_APPS_UPDATE_KEY:Ljava/lang/String;
    const-string v0, "apps"

    .line 891
    .local v0, SYSTEM_APPS_UPDATE:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 892
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 893
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "com.android.gallery3d"

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 894
    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 895
    const-string v3, "com.meizu.mstore"

    const-string v4, "com.meizu.mstore.MStoreMainPlusActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 896
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/VideoGallery;->startActivity(Landroid/content/Intent;)V

    .line 897
    return-void
.end method

.method public onBackPressed()V
    .locals 8

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/android/gallery3d/app/VideoGallery;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 596
    .local v2, fm:Landroid/app/FragmentManager;
    sget v6, Lcom/android/gallery3d/app/VideoGallery;->mSelectedPage:I

    packed-switch v6, :pswitch_data_0

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 600
    :pswitch_0
    const-string v6, "tag_favorite"

    invoke-virtual {v2, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    .line 601
    .local v3, fragment:Landroid/app/Fragment;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/app/Fragment;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 602
    sget-object v6, Lcom/android/gallery3d/app/VideoGallery;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    const v7, 0x7f0a01e2

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(I)V

    .line 603
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 606
    :cond_1
    const-string v6, "tag_local"

    invoke-virtual {v2, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    .line 607
    instance-of v6, v3, Lcom/android/gallery3d/app/VideoGalleryFragment;

    if-eqz v6, :cond_0

    .line 608
    :cond_2
    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v6

    if-nez v6, :cond_2

    .line 611
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onBackPressed()V

    goto :goto_0

    .line 616
    .end local v3           #fragment:Landroid/app/Fragment;
    :pswitch_1
    const-string v6, "tag_rank"

    invoke-virtual {v2, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    .line 617
    .local v4, re:Landroid/app/Fragment;
    instance-of v6, v4, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    if-eqz v6, :cond_0

    .line 618
    :cond_3
    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v6

    if-nez v6, :cond_3

    .line 621
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onBackPressed()V

    goto :goto_0

    .line 626
    .end local v4           #re:Landroid/app/Fragment;
    :pswitch_2
    const-string v6, "tag_channel"

    invoke-virtual {v2, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 627
    .local v0, c:Landroid/app/Fragment;
    const-string v6, "chaneldetailtabFragment"

    invoke-virtual {v2, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 628
    .local v1, chaneldetailtabFragment:Landroid/app/Fragment;
    if-eqz v1, :cond_4

    .line 629
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 630
    instance-of v6, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    if-eqz v6, :cond_0

    .line 631
    check-cast v0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    .end local v0           #c:Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->setActionBar()V

    goto :goto_0

    .line 635
    .restart local v0       #c:Landroid/app/Fragment;
    :cond_4
    instance-of v6, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    if-eqz v6, :cond_0

    .line 636
    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v6

    if-nez v6, :cond_5

    .line 637
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onBackPressed()V

    goto :goto_0

    .line 639
    :cond_5
    instance-of v6, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    if-eqz v6, :cond_0

    .line 640
    check-cast v0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    .end local v0           #c:Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->setActionBar()V

    goto/16 :goto_0

    .line 648
    .end local v1           #chaneldetailtabFragment:Landroid/app/Fragment;
    :pswitch_3
    const-string v6, "tag_search"

    invoke-virtual {v2, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    .line 649
    .local v5, s:Landroid/app/Fragment;
    instance-of v6, v5, Lcom/meizu/video/client/ui/module/search/SearchFragment;

    if-eqz v6, :cond_0

    .line 650
    :cond_6
    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v6

    if-nez v6, :cond_6

    .line 653
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onBackPressed()V

    goto/16 :goto_0

    .line 596
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGallery;->mVersionCheckDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_0

    .line 509
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/VideoGallery;->mVersionCheckDialog:Landroid/app/Dialog;

    .line 511
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/VideoGallery;->mUpdateActionBarTitleAfterChanged:Z

    .line 589
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 590
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x10500a3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 277
    invoke-virtual {p0}, Lcom/android/gallery3d/app/VideoGallery;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/gallery3d/app/VideoGallery;->setIntentType(Landroid/content/Intent;)V

    .line 278
    invoke-virtual {p0}, Lcom/android/gallery3d/app/VideoGallery;->disableToggleStatusBar()V

    .line 279
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 280
    sput-boolean v6, Lcom/android/gallery3d/app/VideoGallery;->mHasCheckVersion:Z

    .line 281
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/VideoGallery;->requestWindowFeature(I)Z

    .line 282
    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/VideoGallery;->requestWindowFeature(I)Z

    .line 285
    const v4, 0x7f04008b

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/VideoGallery;->setContentView(I)V

    .line 288
    invoke-virtual {p0}, Lcom/android/gallery3d/app/VideoGallery;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sput v4, Lcom/meizu/video/client/common/Constant;->actionBarBigHeight:I

    .line 289
    invoke-virtual {p0}, Lcom/android/gallery3d/app/VideoGallery;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sput v4, Lcom/meizu/video/client/common/Constant;->actionBarSmallHeight:I

    .line 291
    invoke-virtual {p0}, Lcom/android/gallery3d/app/VideoGallery;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v4

    sput-object v4, Lcom/android/gallery3d/app/VideoGallery;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    .line 292
    sget-object v4, Lcom/android/gallery3d/app/VideoGallery;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 293
    invoke-static {}, Landroid/os/Build;->isProductInternational()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/gallery3d/app/VideoGallery;->isProductInternational:Z

    .line 294
    iget-boolean v4, p0, Lcom/android/gallery3d/app/VideoGallery;->isProductInternational:Z

    if-nez v4, :cond_1

    .line 295
    invoke-direct {p0}, Lcom/android/gallery3d/app/VideoGallery;->initData()V

    .line 320
    :goto_0
    if-eqz p1, :cond_0

    .line 321
    const-string v4, "SelectedPage"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/app/VideoGallery;->mLastSelectedPage:I

    .line 322
    const-string v4, "Gallery"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SelectedPage mSelectedPage="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/gallery3d/app/VideoGallery;->mSelectedPage:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_0
    new-instance v4, Lcom/android/gallery3d/app/VideoGallery$2;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/app/VideoGallery$2;-><init>(Lcom/android/gallery3d/app/VideoGallery;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/VideoGallery;->mHandler:Landroid/os/Handler;

    .line 349
    return-void

    .line 297
    :cond_1
    sget-object v4, Lcom/android/gallery3d/app/VideoGallery;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 298
    .local v0, bar:Landroid/app/ActionBar;
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 300
    invoke-virtual {p0}, Lcom/android/gallery3d/app/VideoGallery;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 301
    .local v1, fm:Landroid/app/FragmentManager;
    const-string v3, "tag_local"

    .line 302
    .local v3, tag:Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 303
    .local v2, fragment:Landroid/app/Fragment;
    if-nez v2, :cond_2

    .line 304
    new-instance v2, Lcom/android/gallery3d/app/VideoGalleryFragment;

    .end local v2           #fragment:Landroid/app/Fragment;
    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/VideoGalleryFragment;-><init>(Lcom/android/gallery3d/app/GalleryActivity;)V

    .line 305
    .restart local v2       #fragment:Landroid/app/Fragment;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    const v5, 0x7f0d01a2

    invoke-virtual {v4, v5, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 309
    :goto_1
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setEnabledBackWhenOverlay(Z)V

    .line 310
    const/16 v4, 0x18

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 312
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setActionModeHeaderHidden(Z)V

    .line 313
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->useMzTitleLayout(Z)V

    .line 314
    sput v6, Lcom/android/gallery3d/app/VideoGallery;->mSelectedPage:I

    .line 316
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/gallery3d/app/VideoGallery;->mSearchView:Landroid/view/View;

    .line 317
    const v4, 0x102026f

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/VideoGallery;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/gallery3d/app/VideoGallery;->mActionBarTitle:Landroid/widget/TextView;

    goto :goto_0

    .line 307
    :cond_2
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 458
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 460
    iget-boolean v1, p0, Lcom/android/gallery3d/app/VideoGallery;->isProductInternational:Z

    if-nez v1, :cond_0

    .line 461
    invoke-virtual {p0}, Lcom/android/gallery3d/app/VideoGallery;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v1

    sput-object v1, Lcom/android/gallery3d/app/VideoGallery;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    .line 462
    sget-object v1, Lcom/android/gallery3d/app/VideoGallery;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 464
    .local v0, bar:Landroid/app/ActionBar;
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 465
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTabsShowAtBottom(Z)V

    .line 466
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setActionModeHeaderHidden(Z)V

    .line 467
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->useMzTitleLayout(Z)V

    .line 469
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/app/VideoGallery;->mSearchView:Landroid/view/View;

    .line 470
    const v1, 0x102026f

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/VideoGallery;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/gallery3d/app/VideoGallery;->mActionBarTitle:Landroid/widget/TextView;

    .line 471
    invoke-direct {p0}, Lcom/android/gallery3d/app/VideoGallery;->setupPages()V

    .line 474
    .end local v0           #bar:Landroid/app/ActionBar;
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/VideoGallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/app/StateManager;->createOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 582
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onDestroy()V

    .line 583
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/gallery3d/app/VideoGallery;->mHasCheckVersion:Z

    .line 584
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 497
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onPause()V

    .line 498
    iget-boolean v0, p0, Lcom/android/gallery3d/app/VideoGallery;->isProductInternational:Z

    if-nez v0, :cond_0

    .line 499
    invoke-virtual {p0}, Lcom/android/gallery3d/app/VideoGallery;->destroyBrocast()V

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGallery;->mVersionCheckDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGallery;->mVersionCheckDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 504
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 479
    const-string v0, "Gallery"

    const-string v1, "VideoGallery onResume..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const-wide/16 v0, 0x12c

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :goto_0
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onResume()V

    .line 487
    iget-boolean v0, p0, Lcom/android/gallery3d/app/VideoGallery;->isProductInternational:Z

    if-nez v0, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/android/gallery3d/app/VideoGallery;->registerBrocast()V

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGallery;->mVersionCheckDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGallery;->mVersionCheckDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 493
    :cond_1
    return-void

    .line 483
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 353
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 354
    const-string v0, "Gallery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState mSelectedPage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/gallery3d/app/VideoGallery;->mSelectedPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const-string v0, "SelectedPage"

    sget v1, Lcom/android/gallery3d/app/VideoGallery;->mSelectedPage:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 356
    return-void
.end method

.method public registerBrocast()V
    .locals 2

    .prologue
    .line 879
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 880
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 881
    iget-object v1, p0, Lcom/android/gallery3d/app/VideoGallery;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/app/VideoGallery;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 882
    return-void
.end method
