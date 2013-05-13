.class Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$NetworkDialogListener;
.super Ljava/lang/Object;
.source "SelectDownloadActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;
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

.field final synthetic this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;


# direct methods
.method public constructor <init>(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "mNetworkType"
    .parameter "mTitle"
    .parameter "mUrl"
    .parameter "sourceType"

    .prologue
    .line 724
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$NetworkDialogListener;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    .line 725
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 726
    iput p2, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$NetworkDialogListener;->mNetworkType:I

    .line 727
    iput-object p3, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$NetworkDialogListener;->mTitle:Ljava/lang/String;

    .line 728
    iput-object p4, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$NetworkDialogListener;->mUrl:Ljava/lang/String;

    .line 729
    iput p5, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$NetworkDialogListener;->mSourceType:I

    .line 730
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 746
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 734
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 735
    iget v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$NetworkDialogListener;->mSourceType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 736
    iget v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$NetworkDialogListener;->mNetworkType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 737
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$NetworkDialogListener;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->beginDownLoadAndReturn()V

    .line 741
    :cond_0
    return-void
.end method
