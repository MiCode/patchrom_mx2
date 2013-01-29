.class Lcom/android/gallery3d/app/VideoGallery$7;
.super Landroid/content/BroadcastReceiver;
.source "VideoGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/VideoGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/VideoGallery;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/VideoGallery;)V
    .locals 0
    .parameter

    .prologue
    .line 843
    iput-object p1, p0, Lcom/android/gallery3d/app/VideoGallery$7;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 847
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 848
    const/4 v1, 0x0

    .line 849
    .local v1, fragment:Landroid/app/Fragment;
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoGallery$7;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/VideoGallery;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 850
    .local v0, fm:Landroid/app/FragmentManager;
    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->access$100()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 865
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoGallery$7;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->access$100()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/gallery3d/app/VideoGallery;->chooseTabAgian(Landroid/app/Fragment;I)V

    .line 867
    .end local v0           #fm:Landroid/app/FragmentManager;
    .end local v1           #fragment:Landroid/app/Fragment;
    :cond_0
    return-void

    .line 852
    .restart local v0       #fm:Landroid/app/FragmentManager;
    .restart local v1       #fragment:Landroid/app/Fragment;
    :pswitch_0
    const-string v2, "tag_local"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 853
    goto :goto_0

    .line 855
    :pswitch_1
    const-string v2, "tag_rank"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 856
    goto :goto_0

    .line 858
    :pswitch_2
    const-string v2, "tag_channel"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 859
    goto :goto_0

    .line 861
    :pswitch_3
    const-string v2, "tag_search"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    goto :goto_0

    .line 850
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
