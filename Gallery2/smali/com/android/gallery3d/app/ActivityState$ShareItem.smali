.class Lcom/android/gallery3d/app/ActivityState$ShareItem;
.super Ljava/lang/Object;
.source "ActivityState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/ActivityState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareItem"
.end annotation


# instance fields
.field public mComponentName:Landroid/content/ComponentName;

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mId:J

.field public mText:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/gallery3d/app/ActivityState;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/ActivityState;Landroid/graphics/drawable/Drawable;Ljava/lang/String;JLandroid/content/ComponentName;)V
    .locals 0
    .parameter
    .parameter "icon"
    .parameter "text"
    .parameter "id"
    .parameter "name"

    .prologue
    .line 530
    iput-object p1, p0, Lcom/android/gallery3d/app/ActivityState$ShareItem;->this$0:Lcom/android/gallery3d/app/ActivityState;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 531
    iput-object p2, p0, Lcom/android/gallery3d/app/ActivityState$ShareItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 532
    iput-object p3, p0, Lcom/android/gallery3d/app/ActivityState$ShareItem;->mText:Ljava/lang/String;

    .line 533
    iput-wide p4, p0, Lcom/android/gallery3d/app/ActivityState$ShareItem;->mId:J

    .line 534
    iput-object p6, p0, Lcom/android/gallery3d/app/ActivityState$ShareItem;->mComponentName:Landroid/content/ComponentName;

    .line 535
    return-void
.end method
