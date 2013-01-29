.class Lcom/android/gallery3d/ui/DialogDetailsView$5;
.super Ljava/lang/Object;
.source "DialogDetailsView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 333
    iput-object p1, p0, Lcom/android/gallery3d/ui/DialogDetailsView$5;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 336
    if-eqz p2, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView$5;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #calls: Lcom/android/gallery3d/ui/DialogDetailsView;->checkTextViewLocation(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$500(Lcom/android/gallery3d/ui/DialogDetailsView;Landroid/view/View;)V

    .line 339
    :cond_0
    return-void
.end method
