.class Lcom/android/gallery3d/app/CropImage$4;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/CropImage;->onCreateOptionsMenu(Landroid/view/Menu;)Z
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
    .line 302
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage$4;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$4;->this$0:Lcom/android/gallery3d/app/CropImage;

    #getter for: Lcom/android/gallery3d/app/CropImage;->mPopupMenu:Landroid/widget/PopupMenu;
    invoke-static {v0}, Lcom/android/gallery3d/app/CropImage;->access$300(Lcom/android/gallery3d/app/CropImage;)Landroid/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 307
    return-void
.end method
