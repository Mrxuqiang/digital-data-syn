/*
================================================================================
��ṹ����:TB_SYSAJ
��ṹ����:��ѯ��ͼ���ñ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSAJ;
drop index AK_TB_SYSAJ;
drop table TB_SYSAJ;
create table TB_SYSAJ  (
   SYSAJ_ID             INTEGER                         not null,  /*��ѯ��ͼID       */
   SYSAJ001             VARCHAR2(20)                    not null,  /*��ѯ��ͼ����     */
   SYSAJ002             VARCHAR2(30)                    not null,  /*��ѯ��ͼ����     */
   SYSAJ003             VARCHAR2(4000)                  not null,  /*SQL1              */
   SYSAJ004             VARCHAR2(255)                           ,  /*��ע             */
   SYSAJ005             VARCHAR2(1)                     not null,  /*��ͼ����         */
   SYSAJ006             VARCHAR2(1)                             ,  /*��������         */
   SYSAJ007             VARCHAR2(1)                             ,  /*�Ƿ��ѡ         */
   SYSAJ008             VARCHAR2(1)                             ,  /*�Ƿ�������ѯ   */
   SYSAJ009             VARCHAR2(4000),                            /*SQL2             */
   SYSAJ010             VARCHAR2(4000),                            /*SQL3             */
   SYSAJ011             VARCHAR2(4000),                            /*SQL4             */
   SYSAJ012             VARCHAR2(4000),                            /*SQL5             */ 
   SYSAJ013             VARCHAR2(4000),                            /*�����Ӿ�             */
   SYSAJ014             VARCHAR2(2),                               /*�Ƿ�������ʾĬ����£ */
   SYSAJ015             VARCHAR2(2),                               /*��������            */
   SYSAJ016             VARCHAR2(2),                               /*������ʾ��ʽ        */
   SYSAJ017             VARCHAR2(100),                             /*����������ͼ        */
   SYSAJ018             VARCHAR2(255),                             /*������ͼ��ֵӳ�乫ʽ*/
   SYSAJ019             VARCHAR2(100),                             /*sqlӳ�������*/
   SYSAJ020             VARCHAR2(255),                             /*sqlӳ������*/
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SYSAJ primary key (SYSAJ_ID)
);
create unique index AK_TB_SYSAJ on TB_SYSAJ (SYSAJ001);
create sequence SEQ_TB_SYSAJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSAJ to public;
grant index  on TB_SYSAJ to public;
grant update on TB_SYSAJ to public; 
grant delete on TB_SYSAJ to public;  
grant insert on TB_SYSAJ to public; 
grant select on SEQ_TB_SYSAJ to public;   