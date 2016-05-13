/*
================================================================================
��ṹ����:TB_GLDAJ
��ṹ����:���Ŷ�������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_GLDAJ;
drop index AK_TB_GLDAJ;
drop table TB_GLDAJ;
create table TB_GLDAJ  (
   GLDAJ_ID             INTEGER                         not null,  /*������ID           */
   GLDAJ001             INTEGER                         not null,  /*����ID             */
   GLDAJ002             INTEGER                         not null,  /*������˾ID         */
   GLDAJ003             INTEGER                         not null,  /*���������˲�ID     */
   GLDAJ004             INTEGER                         not null,  /*�Է���˾ID         */
   GLDAJ005             INTEGER                         not null,  /*�Է������˲�ID     */
   GLDAJ006             DATE                            not null,  /*��������           */
   GLDAJ007             VARCHAR2(1)                     not null,  /*���˷�ʽ           */
   GLDAJ008             INTEGER                         not null,  /*��Ŀ��Ӧ��ϵ��ID   */
   GLDAJ009             NUMBER(16,2),                              /*�������ҽ跽���   */
   GLDAJ010             NUMBER(16,2),                              /*�������Ҵ������   */
   GLDAJ011             NUMBER(16,2),                              /*�Է����ҽ跽���   */
   GLDAJ012             NUMBER(16,2),                              /*�Է����Ҵ������   */
   GLDAJ013             VARCHAR2(20) ,                             /*����               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_GLDAJ primary key (GLDAJ_ID)
);
create unique index AK_TB_GLDAJ on TB_GLDAJ (GLDAJ001,GLDAJ013);
create sequence SEQ_TB_GLDAJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GLDAJ to public;
grant index  on TB_GLDAJ to public;
grant update on TB_GLDAJ to public; 
grant delete on TB_GLDAJ to public;  
grant insert on TB_GLDAJ to public; 
grant select on SEQ_TB_GLDAJ to public;   