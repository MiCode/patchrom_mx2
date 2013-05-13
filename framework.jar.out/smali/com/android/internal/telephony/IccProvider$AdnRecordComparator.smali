.class Lcom/android/internal/telephony/IccProvider$AdnRecordComparator;
.super Ljava/lang/Object;
.source "IccProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdnRecordComparator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccProvider;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 760
    iput-object p1, p0, Lcom/android/internal/telephony/IccProvider$AdnRecordComparator;->this$0:Lcom/android/internal/telephony/IccProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 762
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    .local v0, adn0:Lcom/android/internal/telephony/AdnRecord;
    move-object v1, p2

    .line 763
    check-cast v1, Lcom/android/internal/telephony/AdnRecord;

    .line 764
    .local v1, adn1:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecord;->getSortKey()Ljava/lang/String;

    move-result-object v2

    .line 765
    .local v2, name0:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/internal/telephony/AdnRecord;->getSortKey()Ljava/lang/String;

    move-result-object v3

    .line 766
    .local v3, name1:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 767
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    .line 769
    :goto_0
    return v4

    :cond_0
    if-ne v2, v3, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const/4 v4, -0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method
