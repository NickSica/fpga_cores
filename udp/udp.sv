module udp();

typedef enum logic [5:0] {IDLE, READ_HEADER, READ_DATA} packet_reader_t;
packer_reader_t reader_state = IDLE;
int hdr_count;

always_comb : parse_packet
begin
    case(reader_state)
        IDLE : begin
            hdr_count = 0;
        end

        READ_HEADER : begin
            if(hdr_count == 0) begin
                
            end

        end

        READ_DATA : begin

        end
end 

endmodule udp
