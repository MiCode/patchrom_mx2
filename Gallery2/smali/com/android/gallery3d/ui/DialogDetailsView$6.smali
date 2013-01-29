.class Lcom/android/gallery3d/ui/DialogDetailsView$6;
.super Ljava/lang/Object;
.source "DialogDetailsView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/DialogDetailsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/DialogDetailsView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/DialogDetailsView;)V
    .locals 0
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/gallery3d/ui/DialogDetailsView$6;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView$6;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #calls: Lcom/android/gallery3d/ui/DialogDetailsView;->checkNeedUpdate()Z
    invoke-static {v0}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$600(Lcom/android/gallery3d/ui/DialogDetailsView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView$6;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    const/4 v1, 0x1

    #calls: Lcom/android/gallery3d/ui/DialogDetailsView;->beginSaveFile(Z)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$700(Lcom/android/gallery3d/ui/DialogDetailsView;Z)V

    .line 463
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView$6;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DialogDetailsView;->hide()V

    goto :goto_0
.end method
