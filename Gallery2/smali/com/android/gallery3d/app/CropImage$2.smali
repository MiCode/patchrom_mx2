.class Lcom/android/gallery3d/app/CropImage$2;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/CropImage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/CropImage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage$2;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$2;->this$0:Lcom/android/gallery3d/app/CropImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/CropImage;->setOverwrite(Z)V

    .line 261
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$2;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/CropImage;->onSaveClicked()V

    .line 263
    return-void
.end method
