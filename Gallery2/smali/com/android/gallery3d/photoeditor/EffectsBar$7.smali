.class Lcom/android/gallery3d/photoeditor/EffectsBar$7;
.super Ljava/lang/Object;
.source "EffectsBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/EffectsBar;->changeEffectsMenu(ZI)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

.field final synthetic val$effectsId:I


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/EffectsBar;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 713
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$7;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    iput p2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$7;->val$effectsId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$7;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$7;->val$effectsId:I

    #calls: Lcom/android/gallery3d/photoeditor/EffectsBar;->createEffectsGallery(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$1100(Lcom/android/gallery3d/photoeditor/EffectsBar;I)V

    .line 718
    return-void
.end method
