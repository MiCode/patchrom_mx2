.class Lcom/android/gallery3d/seekbar/ProgressBar$AccessibilityEventSender;
.super Ljava/lang/Object;
.source "ProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/seekbar/ProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityEventSender"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/seekbar/ProgressBar;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/seekbar/ProgressBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/android/gallery3d/seekbar/ProgressBar$AccessibilityEventSender;->this$0:Lcom/android/gallery3d/seekbar/ProgressBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/seekbar/ProgressBar;Lcom/android/gallery3d/seekbar/ProgressBar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1149
    invoke-direct {p0, p1}, Lcom/android/gallery3d/seekbar/ProgressBar$AccessibilityEventSender;-><init>(Lcom/android/gallery3d/seekbar/ProgressBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar$AccessibilityEventSender;->this$0:Lcom/android/gallery3d/seekbar/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/seekbar/ProgressBar;->sendAccessibilityEvent(I)V

    .line 1152
    return-void
.end method
