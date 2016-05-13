/*
================================================================================
��ṹ����:TB_PUBRO
��ṹ����:��Ӧ��Ŀ�Է���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBRO;
drop index AK_TB_PUBRO;
drop table TB_PUBRO;
create table TB_PUBRO  (
   PUBRO_ID             INTEGER                         not null,  /*��Ӧ��Ŀ�Է�ID       */
   PUBRO001             INTEGER                         not null,  /*��Ӧ��Ŀ��ID         */
   PUBRO002             INTEGER                         not null,  /*��ƿ�ĿID           */
   PUBRO003             VARCHAR2(20),                              /*�����������ʶ       */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_PUBRO primary key (PUBRO_ID)
);
create sequence SEQ_TB_PUBRO minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRO to public;
grant index  on TB_PUBRO to public;
grant update on TB_PUBRO to public; 
grant delete on TB_PUBRO to public;  
grant insert on TB_PUBRO to public; 
grant select on SEQ_TB_PUBRO to public;   