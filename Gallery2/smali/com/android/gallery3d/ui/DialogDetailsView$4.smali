.class Lcom/android/gallery3d/ui/DialogDetailsView$4;
.super Ljava/lang/Object;
.source "DialogDetailsView.java"

# interfaces
.implements Lcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/DialogDetailsView;->setDialogDetails(Landroid/view/View;Lcom/android/gallery3d/data/MediaDetails;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

.field final synthetic val$contentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/DialogDetailsView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/gallery3d/ui/DialogDetailsView$4;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    iput-object p2, p0, Lcom/android/gallery3d/ui/DialogDetailsView$4;->val$contentView:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddressAvailable(Ljava/lang/String;)V
    .locals 3
    .parameter "address"

    .prologue
    .line 242
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView$4;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    iget-object v1, p0, Lcom/android/gallery3d/ui/DialogDetailsView$4;->val$contentView:Landroid/view/View;

    const v2, 0x7f0d0078

    #calls: Lcom/android/gallery3d/ui/DialogDetailsView;->setTextViewInformation(Landroid/view/View;ILjava/lang/String;)V
    invoke-static {v0, v1, v2, p1}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$400(Lcom/android/gallery3d/ui/DialogDetailsView;Landroid/view/View;ILjava/lang/String;)V

    .line 245
    :cond_0
    return-void
.end method
