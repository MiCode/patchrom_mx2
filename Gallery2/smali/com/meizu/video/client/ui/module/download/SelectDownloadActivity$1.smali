.class Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$1;
.super Ljava/lang/Object;
.source "SelectDownloadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$1;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$1;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->checkAllOrUnall()V

    .line 191
    return-void
.end method
