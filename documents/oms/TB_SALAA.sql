/*
================================================================================
��ṹ����:TB_SALAA
��ṹ����:ǰ������POS������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SALAA;
drop index AK_TB_SALAA;
drop table TB_SALAA;
create table TB_SALAA  (
   SALAA_ID             INTEGER                         not null,  /*ǰ��POS����ID    */
   SALAA001             INTEGER                         not null,  /*Ӫ����֯ID       */
   SALAA002             VARCHAR2(12)                    not null,  /*������̨���     */
   SALAA003             VARCHAR2(30),                              /*������̨����     */
   SALAA004             VARCHAR2(16),                              /*IP��ַ           */
   SALAA005             VARCHAR2(1),                               /*�Ƿ���Ӫר��     */
   SALAA006             INTEGER,                                   /*��Ӫר��̯λ��   */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SALAA primary key (SALAA_ID)
);
create unique index AK_TB_SALAA on TB_SALAA (SALAA002,SALAA003);
create sequence SEQ_TB_SALAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALAA to public;
grant index  on TB_SALAA to public;
grant update on TB_SALAA to public; 
grant delete on TB_SALAA to public;  
grant insert on TB_SALAA to public; 
grant select on SEQ_TB_SALAA to public;   