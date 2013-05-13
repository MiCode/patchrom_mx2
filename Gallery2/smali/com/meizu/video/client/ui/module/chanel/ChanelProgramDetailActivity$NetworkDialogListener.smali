.class Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$NetworkDialogListener;
.super Ljava/lang/Object;
.source "ChanelProgramDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkDialogListener"
.end annotation


# instance fields
.field private mNetworkType:I

.field private mSourceType:I

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;


# direct methods
.method public constructor <init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "mNetworkType"
    .parameter "mTitle"
    .parameter "mUrl"
    .parameter "sourceType"

    .prologue
    .line 1582
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$NetworkDialogListener;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    .line 1583
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1584
    iput p2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$NetworkDialogListener;->mNetworkType:I

    .line 1585
    iput-object p3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$NetworkDialogListener;->mTitle:Ljava/lang/String;

    .line 1586
    iput-object p4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$NetworkDialogListener;->mUrl:Ljava/lang/String;

    .line 1587
    iput p5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$NetworkDialogListener;->mSourceType:I

    .line 1588
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 1608
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x3

    .line 1592
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1593
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$NetworkDialogListener;->mSourceType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1594
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$NetworkDialogListener;->mNetworkType:I

    if-ne v0, v2, :cond_0

    .line 1595
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$NetworkDialogListener;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$NetworkDialogListener;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$NetworkDialogListener;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->goToPlayVideo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    :cond_0
    :goto_0
    return-void

    .line 1597
    :cond_1
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$NetworkDialogListener;->mSourceType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1598
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$NetworkDialogListener;->mNetworkType:I

    if-ne v0, v2, :cond_0

    .line 1599
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$NetworkDialogListener;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$NetworkDialogListener;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$NetworkDialogListener;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->goToDownloadVideo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
