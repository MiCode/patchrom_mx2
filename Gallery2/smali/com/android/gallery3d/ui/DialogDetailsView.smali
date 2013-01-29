.class public Lcom/android/gallery3d/ui/DialogDetailsView;
.super Ljava/lang/Object;
.source "DialogDetailsView.java"

# interfaces
.implements Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;
    }
.end annotation


# instance fields
.field private NeutralBtnClick:Landroid/content/DialogInterface$OnClickListener;

.field private mAdapter:Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;

.field private final mContext:Lcom/android/gallery3d/app/GalleryActivity;

.field private mDetails:Lcom/android/gallery3d/data/MediaDetails;

.field private mDialog:Landroid/app/AlertDialog;

.field private mFilePath:Ljava/lang/String;

.field private mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mHeightEdit:Landroid/widget/EditText;

.field private mHeightEditWatcher:Landroid/text/TextWatcher;

.field private mImageH:I

.field private mImageTitle:Ljava/lang/String;

.field private mImageW:I

.field private mIndex:I

.field private mListener:Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;

.field private mMainHandler:Landroid/os/Handler;

.field private mMediaItem:Lcom/android/gallery3d/data/MediaItem;

.field private mMinImageH:I

.field private mMinImageW:I

.field private mNewHeight:I

.field private mNewTitle:Ljava/lang/String;

.field private mNewWidth:I

.field private mPositiveBtnClick:Landroid/content/DialogInterface$OnClickListener;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSaveFileHelper:Lcom/android/gallery3d/ui/DetailsSaveFileHelper;

.field private final mSource:Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;

.field private mTitleEdit:Landroid/widget/EditText;

.field private mWidthEdit:Landroid/widget/EditText;

.field private mWidthEditWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;)V
    .locals 1
    .parameter "activity"
    .parameter "source"

    .prologue
    .line 122
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/android/gallery3d/ui/DialogDetailsView$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/DialogDetailsView$1;-><init>(Lcom/android/gallery3d/ui/DialogDetailsView;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mMainHandler:Landroid/os/Handler;

    .line 333
    new-instance v0, Lcom/android/gallery3d/ui/DialogDetailsView$5;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/DialogDetailsView$5;-><init>(Lcom/android/gallery3d/ui/DialogDetailsView;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 455
    new-instance v0, Lcom/android/gallery3d/ui/DialogDetailsView$6;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/DialogDetailsView$6;-><init>(Lcom/android/gallery3d/ui/DialogDetailsView;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->NeutralBtnClick:Landroid/content/DialogInterface$OnClickListener;

    .line 466
    new-instance v0, Lcom/android/gallery3d/ui/DialogDetailsView$7;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/DialogDetailsView$7;-><init>(Lcom/android/gallery3d/ui/DialogDetailsView;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mPositiveBtnClick:Landroid/content/DialogInterface$OnClickListener;

    .line 477
    new-instance v0, Lcom/android/gallery3d/ui/DialogDetailsView$8;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/DialogDetailsView$8;-><init>(Lcom/android/gallery3d/ui/DialogDetailsView;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mHeightEditWatcher:Landroid/text/TextWatcher;

    .line 512
    new-instance v0, Lcom/android/gallery3d/ui/DialogDetailsView$9;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/DialogDetailsView$9;-><init>(Lcom/android/gallery3d/ui/DialogDetailsView;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mWidthEditWatcher:Landroid/text/TextWatcher;

    .line 123
    iput-object p1, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mContext:Lcom/android/gallery3d/app/GalleryActivity;

    .line 124
    iput-object p2, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mSource:Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/DialogDetailsView;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/DialogDetailsView;->showToast(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/DialogDetailsView;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/ui/DialogDetailsView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mImageH:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/ui/DialogDetailsView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mNewWidth:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/gallery3d/ui/DialogDetailsView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mNewWidth:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/ui/DialogDetailsView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mImageW:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/ui/DialogDetailsView;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mWidthEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/ui/DialogDetailsView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/ui/DialogDetailsView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mNewTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/ui/DialogDetailsView;)Lcom/android/gallery3d/ui/DetailsSaveFileHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mSaveFileHelper:Lcom/android/gallery3d/ui/DetailsSaveFileHelper;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/ui/DialogDetailsView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/ui/DialogDetailsView;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/DialogDetailsView;->sendShowToasMessage(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/ui/DialogDetailsView;)Lcom/android/gallery3d/app/GalleryActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mContext:Lcom/android/gallery3d/app/GalleryActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/DialogDetailsView;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/ui/DialogDetailsView;)Lcom/android/gallery3d/data/MediaDetails;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDetails:Lcom/android/gallery3d/data/MediaDetails;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/DialogDetailsView;)Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mListener:Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/DialogDetailsView;Landroid/view/View;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/ui/DialogDetailsView;->setTextViewInformation(Landroid/view/View;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/DialogDetailsView;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/DialogDetailsView;->checkTextViewLocation(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/DialogDetailsView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/gallery3d/ui/DialogDetailsView;->checkNeedUpdate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/DialogDetailsView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/DialogDetailsView;->beginSaveFile(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/DialogDetailsView;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mHeightEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/ui/DialogDetailsView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mNewHeight:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/gallery3d/ui/DialogDetailsView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mNewHeight:I

    return p1
.end method

.method private beginSaveFile(Z)V
    .locals 10
    .parameter "overwrite"

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f0a01e7

    const/4 v5, 0x0

    .line 548
    invoke-direct {p0}, Lcom/android/gallery3d/ui/DialogDetailsView;->checkIsAcceptable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 549
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mSaveFileHelper:Lcom/android/gallery3d/ui/DetailsSaveFileHelper;

    if-nez v0, :cond_0

    .line 550
    new-instance v0, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;

    iget-object v1, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mContext:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/data/MediaItem;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mSaveFileHelper:Lcom/android/gallery3d/ui/DetailsSaveFileHelper;

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1

    .line 553
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mContext:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1030317

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 554
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 556
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mSaveFileHelper:Lcom/android/gallery3d/ui/DetailsSaveFileHelper;

    iget-object v1, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mNewTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mNewWidth:I

    iget v7, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mImageW:I

    if-ne v4, v7, :cond_2

    iget v4, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mNewHeight:I

    iget v7, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mImageH:I

    if-eq v4, v7, :cond_3

    :cond_2
    const/4 v5, 0x1

    :cond_3
    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->createFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    .line 557
    .local v6, newPath:Ljava/lang/String;
    if-eqz p1, :cond_5

    .line 558
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mImageTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mNewTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 559
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mSaveFileHelper:Lcom/android/gallery3d/ui/DetailsSaveFileHelper;

    invoke-virtual {v0, v6}, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 560
    invoke-direct {p0, v8, v9}, Lcom/android/gallery3d/ui/DialogDetailsView;->showToast(ILjava/lang/String;)V

    .line 578
    .end local v6           #newPath:Ljava/lang/String;
    :cond_4
    :goto_0
    return-void

    .line 565
    .restart local v6       #newPath:Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mSaveFileHelper:Lcom/android/gallery3d/ui/DetailsSaveFileHelper;

    invoke-virtual {v0, v6}, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 566
    invoke-direct {p0, v8, v9}, Lcom/android/gallery3d/ui/DialogDetailsView;->showToast(ILjava/lang/String;)V

    goto :goto_0

    .line 570
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 571
    iget v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mNewWidth:I

    iget v1, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mImageW:I

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mNewHeight:I

    iget v1, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mImageH:I

    if-ne v0, v1, :cond_7

    .line 572
    invoke-direct {p0, p1, v6}, Lcom/android/gallery3d/ui/DialogDetailsView;->renameFile(ZLjava/lang/String;)V

    .line 576
    :goto_1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/DialogDetailsView;->hide()V

    goto :goto_0

    .line 574
    :cond_7
    invoke-direct {p0, p1, v6}, Lcom/android/gallery3d/ui/DialogDetailsView;->createFile(ZLjava/lang/String;)V

    goto :goto_1
.end method

.method private checkIsAcceptable()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 416
    iget-object v4, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mTitleEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, newTitle:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 418
    const v4, 0x7f0a01df

    invoke-direct {p0, v4, v5}, Lcom/android/gallery3d/ui/DialogDetailsView;->showToast(ILjava/lang/String;)V

    .line 444
    :goto_0
    return v3

    .line 423
    :cond_0
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->isFileNameLegal(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 424
    const v4, 0x7f0a01dd

    invoke-direct {p0, v4, v5}, Lcom/android/gallery3d/ui/DialogDetailsView;->showToast(ILjava/lang/String;)V

    goto :goto_0

    .line 428
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mWidthEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 429
    .local v2, widthString:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mHeightEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, heightString:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 433
    :cond_2
    const v4, 0x7f0a01de

    invoke-direct {p0, v4, v5}, Lcom/android/gallery3d/ui/DialogDetailsView;->showToast(ILjava/lang/String;)V

    goto :goto_0

    .line 437
    :cond_3
    iget v4, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mNewWidth:I

    iget v5, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mImageW:I

    if-gt v4, v5, :cond_4

    iget v4, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mNewHeight:I

    iget v5, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mImageH:I

    if-le v4, v5, :cond_5

    .line 438
    :cond_4
    const v4, 0x7f0a01e0

    iget v5, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mImageW:I

    iget v6, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mImageH:I

    invoke-direct {p0, v5, v6}, Lcom/android/gallery3d/ui/DialogDetailsView;->getToastTip(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/gallery3d/ui/DialogDetailsView;->showToast(ILjava/lang/String;)V

    goto :goto_0

    .line 440
    :cond_5
    iget v4, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mNewWidth:I

    iget v5, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mMinImageW:I

    if-lt v4, v5, :cond_6

    iget v4, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mNewHeight:I

    iget v5, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mMinImageH:I

    if-ge v4, v5, :cond_7

    .line 441
    :cond_6
    const v4, 0x7f0a01e1

    iget v5, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mMinImageW:I

    iget v6, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mMinImageH:I

    invoke-direct {p0, v5, v6}, Lcom/android/gallery3d/ui/DialogDetailsView;->getToastTip(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/gallery3d/ui/DialogDetailsView;->showToast(ILjava/lang/String;)V

    goto :goto_0

    .line 444
    :cond_7
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private checkNeedUpdate()Z
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mTitleEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mNewTitle:Ljava/lang/String;

    .line 449
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mNewTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mImageTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mNewHeight:I

    iget v1, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mImageH:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mNewWidth:I

    iget v1, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mImageW:I

    if-eq v0, v1, :cond_1

    .line 450
    :cond_0
    const/4 v0, 0x1

    .line 452
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkTextViewLocation(Landroid/view/View;)V
    .locals 11
    .parameter "contentView"

    .prologue
    const v10, 0x7f0d0071

    const v9, 0x7f0d0070

    const/4 v8, 0x3

    const v7, 0x7f0d006f

    const/4 v6, -0x2

    .line 343
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    const v5, 0x7f0d0072

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int v2, v4, v5

    .line 347
    .local v2, textViewTotalWidth:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mContext:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090119

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 348
    .local v0, leftMargin:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mContext:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090117

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 349
    .local v3, topMargin:I
    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 351
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 352
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 353
    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 354
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 357
    .restart local v1       #params:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, 0x1

    invoke-virtual {v1, v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 358
    invoke-virtual {v1, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 359
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 360
    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 361
    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 364
    .restart local v1       #params:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, 0x1

    invoke-virtual {v1, v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 365
    invoke-virtual {v1, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 366
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 367
    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 368
    const v4, 0x7f0d0072

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    .end local v1           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private createFile(ZLjava/lang/String;)V
    .locals 2
    .parameter "overwrite"
    .parameter "newPath"

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mSaveFileHelper:Lcom/android/gallery3d/ui/DetailsSaveFileHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/ui/DialogDetailsView$10;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/gallery3d/ui/DialogDetailsView$10;-><init>(Lcom/android/gallery3d/ui/DialogDetailsView;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 595
    return-void
.end method

.method private getToastTip(II)Ljava/lang/String;
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " X "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private renameFile(ZLjava/lang/String;)V
    .locals 2
    .parameter "overwrite"
    .parameter "newPath"

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mSaveFileHelper:Lcom/android/gallery3d/ui/DetailsSaveFileHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/ui/DialogDetailsView$11;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/gallery3d/ui/DialogDetailsView$11;-><init>(Lcom/android/gallery3d/ui/DialogDetailsView;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 611
    return-void
.end method

.method private sendShowToasMessage(ILjava/lang/String;)V
    .locals 2
    .parameter "messageId"
    .parameter "tip"

    .prologue
    .line 398
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 399
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 400
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 401
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 402
    iget-object v1, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 403
    return-void
.end method

.method private setDetails(Lcom/android/gallery3d/data/MediaDetails;)V
    .locals 11
    .parameter "details"

    .prologue
    const/4 v7, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 150
    iget-object v5, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v5

    if-ne v7, v5, :cond_0

    .line 151
    iget-object v5, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mContext:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v5}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 152
    .local v3, layoutInflater:Landroid/view/LayoutInflater;
    const v5, 0x7f040021

    invoke-virtual {v3, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 154
    .local v0, contentView:Landroid/view/View;
    const v5, 0x7f0d006b

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mWidthEdit:Landroid/widget/EditText;

    .line 155
    iget-object v5, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mWidthEdit:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mWidthEditWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 157
    const v5, 0x7f0d006c

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mHeightEdit:Landroid/widget/EditText;

    .line 158
    iget-object v5, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mHeightEdit:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mHeightEditWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 160
    const v5, 0x7f0d0066

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mTitleEdit:Landroid/widget/EditText;

    .line 162
    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/ui/DialogDetailsView;->setDialogDetails(Landroid/view/View;Lcom/android/gallery3d/data/MediaDetails;)V

    .line 164
    iget-object v5, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 166
    const v2, 0x1030317

    .line 167
    .local v2, dialogStyle:I
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mContext:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v5, Landroid/app/Activity;

    invoke-direct {v6, v5, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mContext:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v6}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a0148

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mContext:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v6}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a01c2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->NeutralBtnClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mContext:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v6}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a01c3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mPositiveBtnClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDialog:Landroid/app/AlertDialog;

    .line 174
    iget-object v5, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 175
    iget-object v5, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDialog:Landroid/app/AlertDialog;

    const/4 v6, -0x2

    invoke-virtual {v5, v6, v10}, Landroid/app/AlertDialog;->setButtonClickDismiss(IZ)V

    .line 176
    iget-object v5, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDialog:Landroid/app/AlertDialog;

    const/4 v6, -0x3

    invoke-virtual {v5, v6, v8}, Landroid/app/AlertDialog;->setButtonClickDismiss(IZ)V

    .line 177
    iget-object v5, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDialog:Landroid/app/AlertDialog;

    const/4 v6, -0x1

    invoke-virtual {v5, v6, v8}, Landroid/app/AlertDialog;->setButtonClickDismiss(IZ)V

    .line 198
    .end local v0           #contentView:Landroid/view/View;
    .end local v2           #dialogStyle:I
    .end local v3           #layoutInflater:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v5, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/android/gallery3d/ui/DialogDetailsView$3;

    invoke-direct {v6, p0}, Lcom/android/gallery3d/ui/DialogDetailsView$3;-><init>(Lcom/android/gallery3d/ui/DialogDetailsView;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 205
    return-void

    .line 179
    :cond_0
    new-instance v5, Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;

    invoke-direct {v5, p0, p1}, Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;-><init>(Lcom/android/gallery3d/ui/DialogDetailsView;Lcom/android/gallery3d/data/MediaDetails;)V

    iput-object v5, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mAdapter:Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;

    .line 180
    iget-object v5, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mContext:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v5}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0150

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mIndex:I

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mSource:Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;

    invoke-interface {v7}, Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, title:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mContext:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v5}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040022

    invoke-virtual {v5, v6, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 185
    .local v1, detailsList:Landroid/widget/ListView;
    iget-object v5, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mAdapter:Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 186
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mContext:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v5, Landroid/app/Activity;

    invoke-direct {v6, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a0151

    new-instance v7, Lcom/android/gallery3d/ui/DialogDetailsView$2;

    invoke-direct {v7, p0}, Lcom/android/gallery3d/ui/DialogDetailsView$2;-><init>(Lcom/android/gallery3d/ui/DialogDetailsView;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private setDialogDetails(Landroid/view/View;Lcom/android/gallery3d/data/MediaDetails;)V
    .locals 12
    .parameter "contentView"
    .parameter "details"

    .prologue
    const/16 v8, 0x20

    .line 208
    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaDetails;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 209
    .local v0, detail:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const-string v6, ""

    .line 210
    .local v6, value:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    .line 212
    :sswitch_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 213
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 214
    iput-object v6, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mImageTitle:Ljava/lang/String;

    .line 215
    iget-object v7, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mTitleEdit:Landroid/widget/EditText;

    invoke-direct {p0, v7, v6}, Lcom/android/gallery3d/ui/DialogDetailsView;->setEditTextInformation(Landroid/widget/EditText;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :sswitch_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .end local v6           #value:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 222
    .restart local v6       #value:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 223
    const-string v7, "-"

    const-string v9, "/"

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 224
    const v7, 0x7f0d006e

    invoke-direct {p0, p1, v7, v6}, Lcom/android/gallery3d/ui/DialogDetailsView;->setTextViewInformation(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_0

    .line 230
    :sswitch_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [D

    move-object v4, v7

    check-cast v4, [D

    .line 231
    .local v4, latlng:[D
    iget-object v7, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mContext:Lcom/android/gallery3d/app/GalleryActivity;

    new-instance v9, Lcom/android/gallery3d/ui/DialogDetailsView$4;

    invoke-direct {v9, p0, p1}, Lcom/android/gallery3d/ui/DialogDetailsView$4;-><init>(Lcom/android/gallery3d/ui/DialogDetailsView;Landroid/view/View;)V

    invoke-static {v7, v4, v9}, Lcom/android/gallery3d/ui/DetailsHelper;->resolveAddress(Lcom/android/gallery3d/app/GalleryActivity;[DLcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;)Ljava/lang/String;

    goto :goto_0

    .line 244
    .end local v4           #latlng:[D
    :sswitch_3
    iget-object v7, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mContext:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v7}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v9

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 246
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 247
    const v7, 0x7f0d006d

    invoke-direct {p0, p1, v7, v6}, Lcom/android/gallery3d/ui/DialogDetailsView;->setTextViewInformation(Landroid/view/View;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 253
    :sswitch_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 254
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 255
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "MM"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 256
    const v7, 0x7f0d0070

    invoke-direct {p0, p1, v7, v6}, Lcom/android/gallery3d/ui/DialogDetailsView;->setTextViewInformation(Landroid/view/View;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 262
    :sswitch_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 263
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 264
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "F/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 265
    const v7, 0x7f0d0071

    invoke-direct {p0, p1, v7, v6}, Lcom/android/gallery3d/ui/DialogDetailsView;->setTextViewInformation(Landroid/view/View;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 271
    :sswitch_6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 272
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 273
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ISO "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 274
    const v7, 0x7f0d0072

    invoke-direct {p0, p1, v7, v6}, Lcom/android/gallery3d/ui/DialogDetailsView;->setTextViewInformation(Landroid/view/View;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 288
    :sswitch_7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 289
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 290
    const v7, 0x7f0d006f

    invoke-direct {p0, p1, v7, v6}, Lcom/android/gallery3d/ui/DialogDetailsView;->setTextViewInformation(Landroid/view/View;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 296
    :sswitch_8
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 297
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 298
    iput-object v6, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mFilePath:Ljava/lang/String;

    .line 299
    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 300
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 301
    const v7, 0x7f0d0067

    invoke-direct {p0, p1, v7, v6}, Lcom/android/gallery3d/ui/DialogDetailsView;->setTextViewInformation(Landroid/view/View;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 308
    .end local v0           #detail:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v6           #value:Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v3

    .line 309
    .local v3, itemWidth:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v2

    .line 310
    .local v2, itemHeight:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v7

    rem-int/lit16 v7, v7, 0xb4

    if-eqz v7, :cond_2

    .line 311
    move v5, v3

    .line 312
    .local v5, temp:I
    move v3, v2

    .line 313
    move v2, v5

    .line 316
    .end local v5           #temp:I
    :cond_2
    iput v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mImageH:I

    .line 317
    iget-object v7, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mHeightEdit:Landroid/widget/EditText;

    iget v9, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mImageH:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v9}, Lcom/android/gallery3d/ui/DialogDetailsView;->setEditTextInformation(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 318
    iget v7, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mImageH:I

    if-gt v7, v8, :cond_3

    .line 319
    invoke-direct {p0}, Lcom/android/gallery3d/ui/DialogDetailsView;->setEditTextDisabled()V

    .line 321
    :cond_3
    iget v7, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mImageH:I

    div-int/lit8 v7, v7, 0x10

    if-le v7, v8, :cond_6

    iget v7, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mImageH:I

    div-int/lit8 v7, v7, 0x10

    :goto_1
    iput v7, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mMinImageH:I

    .line 322
    iget v7, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mImageH:I

    iput v7, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mNewHeight:I

    .line 324
    iput v3, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mImageW:I

    .line 325
    iget-object v7, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mWidthEdit:Landroid/widget/EditText;

    iget v9, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mImageW:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v9}, Lcom/android/gallery3d/ui/DialogDetailsView;->setEditTextInformation(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 326
    iget v7, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mImageW:I

    if-gt v7, v8, :cond_4

    .line 327
    invoke-direct {p0}, Lcom/android/gallery3d/ui/DialogDetailsView;->setEditTextDisabled()V

    .line 329
    :cond_4
    iget v7, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mImageW:I

    div-int/lit8 v7, v7, 0x10

    if-le v7, v8, :cond_5

    iget v7, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mImageW:I

    div-int/lit8 v8, v7, 0x10

    :cond_5
    iput v8, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mMinImageW:I

    .line 330
    iget v7, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mImageW:I

    iput v7, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mNewWidth:I

    .line 331
    return-void

    :cond_6
    move v7, v8

    .line 321
    goto :goto_1

    .line 210
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0xa -> :sswitch_3
        0x65 -> :sswitch_7
        0x67 -> :sswitch_4
        0x69 -> :sswitch_5
        0x6c -> :sswitch_6
        0xc8 -> :sswitch_8
    .end sparse-switch
.end method

.method private setEditTextDisabled()V
    .locals 3

    .prologue
    const v2, 0x7f080047

    const/4 v1, 0x0

    .line 391
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mHeightEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 392
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mWidthEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 393
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mHeightEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mContext:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 394
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mWidthEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mContext:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 395
    return-void
.end method

.method private setEditTextInformation(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 1
    .parameter "editText"
    .parameter "value"

    .prologue
    const/4 v0, 0x1

    .line 384
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 385
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 386
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEllipsisSmall(Z)V

    .line 387
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 388
    return-void
.end method

.method private setTextViewInformation(Landroid/view/View;ILjava/lang/String;)V
    .locals 2
    .parameter "contentView"
    .parameter "id"
    .parameter "value"

    .prologue
    .line 373
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 379
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 381
    return-void
.end method

.method private showToast(ILjava/lang/String;)V
    .locals 4
    .parameter "messageId"
    .parameter "tip"

    .prologue
    const/4 v3, 0x0

    .line 406
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mContext:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mContext:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 409
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 135
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mSaveFileHelper:Lcom/android/gallery3d/ui/DetailsSaveFileHelper;

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mSaveFileHelper:Lcom/android/gallery3d/ui/DetailsSaveFileHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->pause()V

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 751
    return-void
.end method

.method public reloadDetails(I)V
    .locals 3
    .parameter "indexHint"

    .prologue
    .line 138
    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mSource:Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;

    invoke-interface {v2, p1}, Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;->findIndex(I)I

    move-result v1

    .line 139
    .local v1, index:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mSource:Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 141
    .local v0, details:Lcom/android/gallery3d/data/MediaDetails;
    if-eqz v0, :cond_0

    .line 142
    iget v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mIndex:I

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDetails:Lcom/android/gallery3d/data/MediaDetails;

    if-eq v2, v0, :cond_0

    .line 143
    :cond_2
    iput v1, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mIndex:I

    .line 144
    iput-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDetails:Lcom/android/gallery3d/data/MediaDetails;

    .line 145
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/DialogDetailsView;->setDetails(Lcom/android/gallery3d/data/MediaDetails;)V

    goto :goto_0
.end method

.method public setCloseListener(Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 736
    iput-object p1, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mListener:Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;

    .line 737
    return-void
.end method

.method public setCurrentItem(Lcom/android/gallery3d/data/MediaItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 740
    iput-object p1, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    .line 741
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mSaveFileHelper:Lcom/android/gallery3d/ui/DetailsSaveFileHelper;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mSaveFileHelper:Lcom/android/gallery3d/ui/DetailsSaveFileHelper;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->setCurrentItem(Lcom/android/gallery3d/data/MediaItem;)V

    .line 744
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mSource:Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/DialogDetailsView;->reloadDetails(I)V

    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setAutoShowSoftInput(Z)V

    .line 130
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 131
    return-void
.end method
