================================================================================
��ṹ����:TB_PUBTC
��ṹ����:Ǳ���û��������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBTC;
drop index AK_TB_PUBTC;
drop table TB_PUBTC;
create table TB_PUBTC  (
   PUBTC_ID             INTEGER                   not null,         /*��ƬID            */
   PUBTC001             INTEGER                   not null,         /*����ID            */
   PUBTC002             DATE                      not null,         /*����              */
   PUBTC003             INTEGER                   not null,         /*����Ա            */
   PUBTC004             INTEGER                   not null��        /*���ʽ          */--20110416 MODIFY BY XIECHUN 
   PUBTC005             VARCHAR2(8)               not null          /*�׶�              */
   PUBTC006             VARCHAR2(255),                              /*��ע              */
   PUBTC007             VARCHAR2(255),                              /*��Ӧ��ʩ          */
   PUBTC008             VARCHAR2(1),                                /*�ϴλʱ��         */
   PUBTC009             INTEGER,                                    /*����;��         */
   PUBTC010             INTEGER,                                     /*¼����*/
   PUBTC011             VARCHAR2(500),                              /*��ͨ����*/
   PUBTC012             VARCHAR2(500),                              /*�˿ͷ���*/
   PUBTC013             DATE,                                       /* ¼��ʱ��*/
   CREATE_USER          VARCHAR2(12),                               /*������Ա          */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����      */                               
   CREATE_DATE          DATE,                                       /*��������          */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա          */
   MODI_DATE            DATE,                                       /*�޸�����          */
   FLAG                 NUMBER(1),                                  /*����״̬          */
   constraint PK_TB_PUBTC primary key (PUBTB_ID)
);
create unique index AK_TB_PUBTC on TB_PUBTC (PUBTA001);
create sequence SEQ_TB_PUBTC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBTC to public;
grant index  on TB_PUBTC to public;
grant update on TB_PUBTC to public; 
grant delete on TB_PUBTC to public;  
grant insert on TB_PUBTC to public; 
grant select on SEQ_TB_PUBTC to public;  
