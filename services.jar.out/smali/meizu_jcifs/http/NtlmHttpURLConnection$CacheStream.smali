.class Lmeizu_jcifs/http/NtlmHttpURLConnection$CacheStream;
.super Ljava/io/OutputStream;
.source "NtlmHttpURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/http/NtlmHttpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheStream"
.end annotation


# instance fields
.field private final collector:Ljava/io/OutputStream;

.field private final stream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .locals 0
    .parameter "stream"
    .parameter "collector"

    .prologue
    .line 601
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 602
    iput-object p1, p0, Lmeizu_jcifs/http/NtlmHttpURLConnection$CacheStream;->stream:Ljava/io/OutputStream;

    .line 603
    iput-object p2, p0, Lmeizu_jcifs/http/NtlmHttpURLConnection$CacheStream;->collector:Ljava/io/OutputStream;

    .line 604
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 607
    iget-object v0, p0, Lmeizu_jcifs/http/NtlmHttpURLConnection$CacheStream;->stream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 608
    iget-object v0, p0, Lmeizu_jcifs/http/NtlmHttpURLConnection$CacheStream;->collector:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 609
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 612
    iget-object v0, p0, Lmeizu_jcifs/http/NtlmHttpURLConnection$CacheStream;->stream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 613
    iget-object v0, p0, Lmeizu_jcifs/http/NtlmHttpURLConnection$CacheStream;->collector:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 614
    return-void
.end method

.method public write(I)V
    .locals 1
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 627
    iget-object v0, p0, Lmeizu_jcifs/http/NtlmHttpURLConnection$CacheStream;->stream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 628
    iget-object v0, p0, Lmeizu_jcifs/http/NtlmHttpURLConnection$CacheStream;->collector:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 629
    return-void
.end method

.method public write([B)V
    .locals 1
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 617
    iget-object v0, p0, Lmeizu_jcifs/http/NtlmHttpURLConnection$CacheStream;->stream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 618
    iget-object v0, p0, Lmeizu_jcifs/http/NtlmHttpURLConnection$CacheStream;->collector:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 619
    return-void
.end method

.method public write([BII)V
    .locals 1
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 622
    iget-object v0, p0, Lmeizu_jcifs/http/NtlmHttpURLConnection$CacheStream;->stream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 623
    iget-object v0, p0, Lmeizu_jcifs/http/NtlmHttpURLConnection$CacheStream;->collector:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 624
    return-void
.end method
