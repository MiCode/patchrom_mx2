.class Lcom/android/gallery3d/photoeditor/YesCancelDialogBuilder$3;
.super Ljava/lang/Object;
.source "YesCancelDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/YesCancelDialogBuilder;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/YesCancelDialogBuilder;

.field final synthetic val$yes:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/YesCancelDialogBuilder;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/YesCancelDialogBuilder$3;->this$0:Lcom/android/gallery3d/photoeditor/YesCancelDialogBuilder;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/YesCancelDialogBuilder$3;->val$yes:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/YesCancelDialogBuilder$3;->val$yes:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 21
    return-void
.end method
