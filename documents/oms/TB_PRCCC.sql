/*
================================================================================
��ṹ����:TB_PRCCC
��ṹ����:�۸���Ե�����Ա���ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PRCCC;
drop index AK_TB_PRCCC;
drop table TB_PRCCC;
create table TB_PRCCC  (
   PRCCC_ID             INTEGER                         not null,  /*�۸���Ե�����Ա��ID*/
   PRCCC001             INTEGER                         not null,  /*�۸���Ե�����ͷID*/
   PRCCC002             INTEGER                         not null,  /*�ۼ۸���Ե�����׼�ۼ�ID*/
   PRCCC003             INTEGER                         not null,  /*��Ա�ȼ�ID        */
   PRCCC004             VARCHAR(1)                      not null,  /*�ο���׼          */
   PRCCC005             NUMBER(12,2)                    not null,  /*�ο���            */
   PRCCC006             NUMBER(5,3)                     not null,  /*��������          */
   PRCCC007             NUMBER(12,2)                    not null,  /*��Ա��            */
   PRCCC008             INTEGER                                    /*ԭ���Ի�Ա��ID    */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PRCCC primary key (PRCCC_ID)
);
create unique index AK_TB_PRCCC on TB_PRCCC (PRCCC001,PRCCC002,PRCCC003);
create sequence SEQ_TB_PRCCC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCCC to public;
grant index  on TB_PRCCC to public;
grant update on TB_PRCCC to public; 
grant delete on TB_PRCCC to public;  
grant insert on TB_PRCCC to public; 
grant select on SEQ_TB_PRCCC to public;   